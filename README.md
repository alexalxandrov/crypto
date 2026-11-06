# Crypto Intelligence & Remote Control

Local-first, **watch-only blockchain intelligence** and remote Linux process management. Designed for a Mac running VS Code/Cline and a Linux server running Ollama.

## Safety scope

This project queries public blockchain data for explicitly supplied public addresses and manages processes on the operator's own Linux host. It does not generate or enumerate seed phrases, probe random mnemonics, guess private keys, discover wallets by secret guessing, sign transactions, or move funds. Wallet secrets must never be pasted into Cline, Ollama, this API, RPC providers, logs, or repository files.

## Architecture

- server/: FastAPI service on Linux; remote process manager, metrics, public chain reads, watchlist.
- mcp_client/: MCP server on Mac; exposes typed tools to Cline.
- prompts/: detailed operating instructions for Ollama/Cline.
- AGENTS.md and .clinerules/: workspace-level agent constraints.
- config/: example public network endpoints.
- scripts/: installers and bootstrap checks.

## Supported read-only chains

- EVM: Ethereum, Base, Arbitrum One, Optimism, Polygon, BNB Smart Chain.
- Bitcoin: address balance and public transaction/block lookup via Blockstream API.
- Solana: native account balance and public transaction/block lookup via JSON-RPC.

Native coin balances are supported on the listed chains. ERC-20 token balances are supported on the listed EVM chains when the operator supplies both the token contract and public wallet address. SPL token-account enumeration is not implemented yet; do not treat native SOL balance as total portfolio value. Token symbols and metadata are intentionally not trusted.

## Linux server install (Parrot/Debian/Ubuntu)

Run as the regular account that owns the server workspace:

```bash
git clone https://github.com/alexalxandrov/crypto.git
cd crypto
chmod +x scripts/install-server.sh
./scripts/install-server.sh
```

The installer uses user-scope Python packages and **does not create a virtual environment**. It generates an API token at ~/.config/crypto/api.token, creates a user systemd service bound to 127.0.0.1:8765, and does not open a firewall port. It creates ~/work as the default process workspace. Review server/config.py before allowing additional workspace roots or executables.

## Mac install

```bash
git clone https://github.com/alexalxandrov/crypto.git
cd crypto
chmod +x scripts/install-mac.sh
./scripts/install-mac.sh
```

The installer installs MCP dependencies at user scope, asks for the SSH destination, retrieves the API token over that authenticated SSH connection without printing it, and writes a Cline MCP snippet to ~/.config/crypto/mcp.json. Add that server entry to Cline's MCP settings without deleting other servers.

Start the SSH tunnel in a separate Mac terminal:

```bash
ssh -N -L 8765:127.0.0.1:8765 oleg@YOUR_SERVER
```

Keep the tunnel open. The existing Ollama tunnel on port 11434 is independent and can remain unchanged.

## Cline first run

Open this repository as the VS Code workspace. Cline should read AGENTS.md, .clinerules/crypto-intelligence.md, and prompts/AGENT_INSTRUCTIONS.md. Follow prompts/CLINE_BOOTSTRAP.md. Verify MCP tools server_info and system_metrics before using process or blockchain tools.

## Initial MCP tools

- Remote host: server_info, system_metrics.
- Process control: process_start, process_list, process_output, process_input, process_stop.
- Chain data: chain_balance, chain_transaction, chain_block.
- Watch-only addresses: watchlist_add, watchlist_list, watchlist_check.

## Configuration

Copy .env.example to a local ignored file or edit the service environment. Public RPC endpoints are examples and may be rate-limited. Use your own RPC provider for sustained workloads. Never commit authenticated RPC URLs or API keys.

## Security

- API binds to loopback only; use SSH forwarding.
- Bearer token required for API calls.
- Process execution is restricted to configured workspace paths and executable names.
- Process API accepts executable + argument arrays, not shell command strings.
- Do not place seed phrases, private keys, wallet files, or API credentials in the repository.
- Never expose port 8765 or Ollama port 11434 to the public internet.
- No Docker and no Python virtual environments.

## Current status

MVP scaffold. Process sessions are held in service memory and will not survive a service restart. The initial process API is not a full PTY/tmux implementation. Review these limitations before relying on it for persistent interactive jobs.
