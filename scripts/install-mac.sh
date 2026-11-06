#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
APP="$HOME/.local/share/crypto-mcp"
mkdir -p "$APP" "$HOME/.config/crypto"
python3 -m venv "$APP/.venv"
"$APP/.venv/bin/pip" install --upgrade pip
"$APP/.venv/bin/pip" install -r "$ROOT/mcp_client/requirements.txt"
read -r -p "SSH destination (example oleg@server): " SSH_DEST
read -r -s -p "Paste API token read from server ~/.config/crypto/api.token: " TOKEN; echo
TOKEN_FILE="$HOME/.config/crypto/api.token"
printf '%s' "$TOKEN" > "$TOKEN_FILE"
chmod 600 "$TOKEN_FILE"
cat > "$HOME/.config/crypto/mcp.json" <<EOF
{
  "mcpServers": {
    "crypto-remote-control": {
      "command": "$APP/.venv/bin/python",
      "args": ["$ROOT/mcp_client/server.py"],
      "env": {
        "CRYPTO_API_URL": "http://127.0.0.1:8765",
        "CRYPTO_TOKEN_FILE": "$TOKEN_FILE"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
EOF
chmod 600 "$HOME/.config/crypto/mcp.json"
echo "MCP config: $HOME/.config/crypto/mcp.json"
echo "Add the crypto-remote-control entry to Cline MCP settings; preserve other entries."
echo "Start SSH tunnel in another terminal:"
echo "ssh -N -L 8765:127.0.0.1:8765 $SSH_DEST"
