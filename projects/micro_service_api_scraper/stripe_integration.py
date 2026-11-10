"""Minimal Stripe integration for the CoinGecko proxy micro‑service.

This module exposes two FastAPI routes:

* ``POST /create-checkout-session`` – Creates a Stripe Checkout Session for a
  subscription. The client must supply an ``email`` and an optional
  ``quantity`` (default 1). The response contains the URL to redirect the
  customer to.
* ``POST /stripe/webhook`` – Handles Stripe webhook events.  Currently it
  listens for ``invoice.payment_succeeded`` and ``customer.subscription.deleted``
  events and stores a minimal record in a local SQLite database (``stripe_events.db``).

The implementation keeps the integration lightweight and suitable for
demonstration purposes.  Production‑grade deployment would require proper
security checks, persistence, and retry logic.
"""

from __future__ import annotations

import os
import json
import sqlite3
from datetime import datetime
from typing import Dict

import stripe
from fastapi import APIRouter, Depends, HTTPException, Request, status
from fastapi.responses import JSONResponse

# Load configuration from environment variables.
# Environment variables used by the integration.  In a test environment the
# real keys are not available, so we fall back to harmless defaults.
STRIPE_SECRET_KEY = os.getenv("STRIPE_SECRET_KEY", "sk_test_dummy")
STRIPE_PRICE_ID = os.getenv("STRIPE_PRICE_ID", "price_dummy")
STRIPE_WEBHOOK_SECRET = os.getenv("STRIPE_WEBHOOK_SECRET", "whsec_dummy")

if not STRIPE_SECRET_KEY:
    raise RuntimeError("Stripe secret key not configured (STRIPE_SECRET_KEY).")

stripe.api_key = STRIPE_SECRET_KEY

router = APIRouter(prefix="/stripe", tags=["stripe"])

DB_PATH = "stripe_events.db"

# Ensure database is created with a minimal schema.
def init_db() -> None:
    conn = sqlite3.connect(DB_PATH)
    cur = conn.cursor()
    cur.execute(
        """
        CREATE TABLE IF NOT EXISTS events (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            event_id TEXT UNIQUE,
            type TEXT,
            payload TEXT,
            received_at TEXT
        );
        """
    )
    conn.commit()
    conn.close()

init_db()


@router.post("/create-checkout-session")
async def create_checkout_session(payload: Dict[str, str]):
    """Create a Stripe Checkout session.

    Expected JSON body:
    {
        "email": "user@example.com",
        "quantity": 1
    }
    """
    email = payload.get("email")
    if not email:
        raise HTTPException(status_code=400, detail="email is required")

    quantity = int(payload.get("quantity", 1))
    if quantity <= 0:
        raise HTTPException(status_code=400, detail="quantity must be positive")

    # For demonstration we use a hard‑coded price ID. In a real setup this
    # should be configurable.
    PRICE_ID = os.getenv("STRIPE_PRICE_ID", "")
    if not PRICE_ID:
        raise HTTPException(status_code=500, detail="STRIPE_PRICE_ID not set")

    try:
        session = stripe.checkout.Session.create(
            payment_method_types=["card"],
            mode="subscription",
            customer_email=email,
            line_items=[
                {
                    "price": PRICE_ID,
                    "quantity": quantity,
                }
            ],
            success_url=os.getenv("BASE_URL", "http://localhost:8000") + "/success?session_id={CHECKOUT_SESSION_ID}",
            cancel_url=os.getenv("BASE_URL", "http://localhost:8000") + "/cancel",
        )
    except Exception as exc:  # pragma: no cover - stripe error
        raise HTTPException(status_code=500, detail=str(exc))

    return {"checkout_url": session.url}


@router.post("/webhook")
async def stripe_webhook(request: Request):
    """Handle incoming Stripe webhook events.

    The event payload is verified using ``STRIPE_WEBHOOK_SECRET``. If the
    secret is missing, the request is accepted as is – suitable for local
    development.
    """
    payload = await request.body()
    sig_header = request.headers.get("stripe-signature", "")
    event = None
    if STRIPE_WEBHOOK_SECRET:
        try:
            event = stripe.Webhook.construct_event(
                payload=payload, sig_header=sig_header, secret=STRIPE_WEBHOOK_SECRET
            )
        except stripe.error.SignatureVerificationError as e:
            raise HTTPException(status_code=400, detail=f"Webhook signature verification failed: {e}")
    else:
        # No secret configured; parse raw payload for demo purposes.
        event = json.loads(payload)

    # Persist minimal event information for later inspection.
    conn = sqlite3.connect(DB_PATH)
    cur = conn.cursor()
    cur.execute(
        "INSERT OR IGNORE INTO events (event_id, type, payload, received_at) VALUES (?,?,?,?)",
        (
            event.get("id"),
            event.get("type"),
            json.dumps(event),
            datetime.utcnow().isoformat(),
        ),
    )
    conn.commit()
    conn.close()

    # Basic business logic: we could react to payment_success or subscription
    # cancellations here. For now we simply acknowledge the event.
    if event.get("type") == "invoice.payment_succeeded":
        # In a real system you would activate the user's subscription.
        pass
    elif event.get("type") == "customer.subscription.deleted":
        # Deactivate or cleanup resources.
        pass

    return JSONResponse(status_code=200, content={"received": True})
