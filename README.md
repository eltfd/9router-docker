# 9Router - Local Config & Docker Deployment

This repository contains the local configuration for **[9Router](https://github.com/decolua/9router)** — a local MITM proxy that routes AI API calls from coding tools (Claude Code, Cursor, Copilot, etc.) to 40+ AI providers with auto-fallback, token optimization (RTK), and multi-account round-robin.

> The 9Router CLI is published on npm as [`9router`](https://www.npmjs.com/package/9router).

## Quick Start

```bash
npm install -g 9router
9router
```

Dashboard opens at `http://localhost:20128`.

## Docker

Build and run with Docker Compose:

```bash
docker compose up -d
```

The container exposes port `20128` and persists provider keys and settings to `./data/`.


## Data Directory

The `data/` directory contains all runtime state and is excluded from version control via `.gitignore`. When using Docker, map this directory as a volume to persist your configuration.

## CLI Options

```bash
9router                    # Start with default settings
9router --port 8080        # Custom port
9router --no-browser       # Don't open browser
9router --skip-update      # Skip auto-update check
9router --help             # Show all options
```

## License

MIT
