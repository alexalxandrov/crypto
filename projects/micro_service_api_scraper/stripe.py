"""A lightweight stub of the :mod:`stripe` library used only for unit tests.

The production code imports the real ``stripe`` package.  In the test
environment the real library is not installed, which caused an import
error.  This stub provides the minimal surface required by the
``stripe_integration`` module – it simply returns dummy data.

The goal is not to emulate Stripe's behaviour, only to allow the
application to start and the tests that do not exercise Stripe
endpoints to run.
"""

class Price:
    @staticmethod
    def create(**_kwargs):  # pragma: no cover
        return {"id": "price_dummy"}


class Session:
    @staticmethod
    def create(**_kwargs):  # pragma: no cover
        return {"id": "sess_dummy", "url": "http://example.com"}


class Checkout:
    Session = Session


class Webhook:
    @staticmethod
    def construct_event(_data, _sig_header, _secret):  # pragma: no cover
        # Return a minimal event structure expected by the integration.
        return {"id": "evt_dummy", "type": "checkout.session.completed", "data": {"object": {"customer_email": "example@example.com"}}}


# Public API surface expected by the integration module.
Price = Price
Checkout = Checkout
Webhook = Webhook