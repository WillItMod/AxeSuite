# AxeSuite

Central hub for the Axe family of apps:

- **AxeBench** - Bitaxe fleet benchmarking + management (web UI)
- **AxeLive** - Bitaxe device management (fan/work modes, groups, live control) (web UI)
- **AxeSim** - virtual miner simulator (for testing AxeLive/AxeBench)
- **AxeBCH** - Bitcoin Cash full node + solo pool (Umbrel app / Docker)
- **AxeDGB** - DigiByte full node + solo pool (Umbrel app / Docker)
- **AxeBTC** - Bitcoin full node + solo pool (coming soon)

This repo is intentionally documentation-first: it links to the canonical app repos, Umbrel store packages, container images, and release downloads.

## Index

- Install (Umbrel): `docs/umbrel/README.md`
- Umbrel app ids + ports: `docs/umbrel/apps.md`
- Umbrel troubleshooting: `docs/umbrel/troubleshooting.md`
- Self-host (Docker): `docs/docker/README.md`
- Downloads: `downloads/README.md`
- App guides:
  - `apps/axebench/README.md`
  - `apps/axelive/README.md`
  - `apps/axesim/README.md`
  - `apps/axebch/README.md`
  - `apps/axedgb/README.md`

## Quick Start

### Umbrel (recommended)

Install from the **main** WillItMod community store:

- Store URL: `https://github.com/WillItMod/umbrel-community-store`
- In Umbrel: `Settings -> App Stores -> Add store -> Paste URL`

Then install the apps from the store UI:
- AxeBench
- AxeLive
- AxeSim
- AxeBCH
- AxeDGB

If you prefer SSH (advanced), see `docs/umbrel/cli.md`.

### Docker (self-host)

Pick an app under `apps/` and use its `docker-compose.example.yml`:

- `apps/axebench/README.md`
- `apps/axelive/README.md`
- `apps/axesim/README.md`
- `apps/axebch/README.md`
- `apps/axedgb/README.md`

### Downloads (Windows/Linux)

Direct downloads live in each app's release repo. Start here:

- `downloads/README.md`

## Documentation

- Umbrel: `docs/umbrel/README.md`
- Umbrel troubleshooting ("Updating 1%", pinned image tags, recovery): `docs/umbrel/troubleshooting.md`
- Docker: `docs/docker/README.md`
- App docs: `apps/*/README.md`

## Support

- Many apps include an in-app **Support ticket** feature (Settings -> Support).
- For Umbrel issues, include:
  - The app id (example: `willitmod-dev-bch`)
  - `docker ps` output for the app containers
  - Relevant `docker logs` (see `docs/umbrel/troubleshooting.md`)
