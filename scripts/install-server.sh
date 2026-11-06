#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
command -v python3 >/dev/null || { echo "python3 is required"; exit 1; }
python3 -m venv .venv
. .venv/bin/activate
pip install --upgrade pip
pip install -r server/requirements.txt
mkdir -p "$HOME/.config/crypto" "$HOME/.local/share/crypto"
TOKEN_FILE="$HOME/.config/crypto/api.token"
if [[ ! -s "$TOKEN_FILE" ]]; then
  python3 -c 'import secrets; print(secrets.token_urlsafe(48))' > "$TOKEN_FILE"
  chmod 600 "$TOKEN_FILE"
fi
WORKSPACE="$HOME/work"
mkdir -p "$WORKSPACE"
cat > server/.env <<EOF
CRYPTO_API_TOKEN=$(cat "$TOKEN_FILE")
CRYPTO_TOKEN_FILE=$TOKEN_FILE
CRYPTO_DATA_DIR=$HOME/.local/share/crypto
CRYPTO_WORKSPACES=$WORKSPACE
EOF
chmod 600 server/.env
SERVICE="$HOME/.config/systemd/user/crypto-remote.service"
mkdir -p "$(dirname "$SERVICE")"
cat > "$SERVICE" <<EOF
[Unit]
Description=Crypto Remote Control API
After=network.target

[Service]
Type=simple
WorkingDirectory=$ROOT
EnvironmentFile=$ROOT/server/.env
ExecStart=$ROOT/.venv/bin/uvicorn server.app:app --host 127.0.0.1 --port 8765
Restart=on-failure
RestartSec=3

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable --now crypto-remote.service
loginctl enable-linger "$USER" || true
echo
echo "Installed. API is loopback-only at 127.0.0.1:8765"
echo "Token file: $TOKEN_FILE"
echo "SSH tunnel from Mac:"
echo "ssh -N -L 8765:127.0.0.1:8765 $USER@YOUR_SERVER"
echo "Workspace: $WORKSPACE"
