# Crypto Intelligence & Remote Control

A local-first toolkit for **watch-only blockchain intelligence** and remote Linux process management. Designed for a Mac running VS Code/Cline and a Linux server running Ollama.

## Scope and safety

- Query public balances and transaction data for explicitly supplied addresses.
- Monitor address lists and compare balance snapshots.
- Support EVM networks (Ethereum, Base, Arbitrum, Optimism, Polygon, BNB Chain), Bitcoin and Solana through public RPC/API endpoints.
- Manage long-running processes on your own Linux server through an authenticated API and SSH tunnel.
- Keep wallet secrets out of logs, telemetry, Ollama prompts and remote APIs.

This project does **not** generate or enumerate seed phrases, probe random mnemonics, scan for wallets belonging to strangers, or attempt access to third-party assets. Mnemonic brute-force/probing is deliberately not implemented. Use watch-only addresses or a wallet's own recovery flow for assets you control.

## Architecture

- `server/`: FastAPI service on Linux; process manager, resource diagnostics and blockchain read-only clients.
- `mcp_client/`: MCP server on Mac; exposes tools to Cline and calls the Linux API through an SSH-forwarded localhost port.
- `prompts/`: detailed agent operating instructions.
- `config/`: example configuration only; never commit secrets.
- `scripts/`: installation and diagnostics.

## Quick start

### Linux server (Parrot/Debian/Ubuntu)

```bash
git clone https://github.com/alexalxandrov/crypto.git
cd crypto
chmod +x scripts/install-server.sh
./scripts/install-server.sh
```

The installer creates a Python virtual environment, generates a local API token, installs a systemd service bound to `127.0.0.1:8765`, and prints the SSH tunnel command. It does not open a firewall port.

### Mac

```bash
git clone https://github.com/alexalxandrov/crypto.git
cd crypto
chmod +x scripts/install-mac.sh
./scripts/install-mac.sh
```

Then create the tunnel in a terminal:

```bash
ssh -N -L 8765:127.0.0.1:8765 oleg@YOUR_SERVER
```

Keep that terminal open. Configure Cline to use the generated MCP server config at `~/.config/crypto/mcp.json` (the installer prints the exact integration steps). Ollama's existing tunnel on 11434 is independent and can remain as-is.

## First tools

- `server_info`, `system_metrics`
- `process_start`, `process_output`, `process_input`, `process_stop`, `process_list`
- `chain_balance`, `chain_transaction`, `chain_block`
- `watchlist_add`, `watchlist_list`, `watchlist_check`

Read `prompts/AGENT_INSTRUCTIONS.md` before operating the server.

## Configuration

Copy `.env.example` to `server/.env` and configure RPC endpoints. Public endpoints are rate-limited; for reliable use, provide your own RPC URLs. The service accepts only read-only blockchain queries.

## Security

- API binds to loopback only; access it over SSH forwarding.
- Bearer token required for API calls.
- Process execution is restricted to configured working directories and an allowlist of executable names.
- No shell command strings are accepted by the process API; arguments are passed as arrays.
- Do not place seed phrases, private keys or wallet files in this repository.
- Do not expose port 8765 to the public internet.

## Status

Initial MVP. Review the allowlist and workspace paths in `server/config.py` before enabling process execution.
