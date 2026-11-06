#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$HOME/.config/crypto"
command -v python3 >/dev/null || { echo "python3 is required"; exit 1; }
echo "[crypto] Installing MCP client dependencies at user scope (no venv)..."
python3 -m pip install --user --break-system-packages -r "$ROOT/mcp_client/requirements.txt"
read -r -p "SSH destination (example oleg@server): " SSH_DEST
read -r -s -p "Paste API token read from server ~/.config/crypto/api.token: " TOKEN; echo
TOKEN_FILE="$HOME/.config/crypto/api.token"
printf '%s' "$TOKEN" > "$TOKEN_FILE"
chmod 600 "$TOKEN_FILE"
cat > "$HOME/.config/crypto/mcp.json" <<EOF
{
  "mcpServers": {
    "crypto-remote-control": {
      "command": "$(command -v python3)",
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
echo
echo "MCP snippet: $HOME/.config/crypto/mcp.json"
echo "Add the crypto-remote-control entry to Cline MCP settings; preserve all existing entries."
echo "Start the SSH tunnel in another terminal:"
echo "ssh -N -L 8765:127.0.0.1:8765 $SSH_DEST"
