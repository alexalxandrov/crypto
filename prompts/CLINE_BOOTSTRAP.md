# Cline first-run task (macOS)

Open this repository as the Cline workspace. Read README.md and prompts/AGENT_INSTRUCTIONS.md first.

## Goal
Connect this Mac workspace to the user's own Linux server using the existing SSH account. Do not change the existing Ollama tunnel on port 11434.

## Sequence
1. Inspect the repository and Mac environment. Do not assume paths or usernames.
2. Verify SSH access with a harmless command. Ask for the SSH destination if it is not provided.
3. Linux installation command:
   ```bash
   git clone https://github.com/alexalxandrov/crypto.git
   cd crypto
   chmod +x scripts/install-server.sh
   ./scripts/install-server.sh
   ```
   If the repository is already present, use `git pull --ff-only` rather than cloning over it.
4. The server installer creates a token at `~/.config/crypto/api.token`. Never print it into model output, logs, or chat. Transfer it securely to the Mac installer prompt.
5. On Mac, run `scripts/install-mac.sh`. It creates the MCP environment and a Cline config snippet at `~/.config/crypto/mcp.json`.
6. Add only the `crypto-remote-control` entry to Cline MCP settings. Preserve all existing MCP servers; do not replace the entire settings file.
7. Start the SSH tunnel in another terminal: `ssh -N -L 8765:127.0.0.1:8765 USER@SERVER`.
8. Verify using MCP tools `server_info` and `system_metrics`. Do not report success before both work.
9. Test a read-only balance lookup only if the operator supplies a public address and chain.
10. Summarize exact paths, commands, connection state and remaining manual steps.

## Guardrails
- Never request or handle seed phrases, private keys, wallet passwords or keystore files.
- Never generate/probe mnemonics or scan random keyspaces for funded wallets.
- Never expose API port 8765 or Ollama port 11434 publicly.
- Never use sudo or change firewall/systemd settings beyond the documented installer without explicit authorization.
- Do not overwrite Cline settings. Show a diff or backup before any edit.
- Do not assume SSH hostname, server home directory or workspace path. Confirm them.
