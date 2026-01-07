# Docker (self-host)

This repo includes Docker Compose examples per app under `apps/*/docker-compose.example.yml`.

## Prerequisites

- Docker Engine + Docker Compose v2
  - Linux: install Docker Engine + Docker Compose plugin
  - Windows: install Docker Desktop (WSL2 recommended)

## Where data lives

Most examples store state in one of two ways:
- named Docker volumes (AxeBench/AxeLive/AxeSim examples), or
- a `./data/` folder next to the compose file (AxeBCH/AxeDGB examples)

If you want to move data to another disk, change the host side of the bind mount.

## Quick pattern

```bash
cd apps/<app>
docker compose -f docker-compose.example.yml up -d
```

Many examples accept env vars (see each app's README). A common pattern:

```bash
APP_PASSWORD=change-me docker compose -f docker-compose.example.yml up -d
```

To update:

```bash
docker compose -f docker-compose.example.yml pull
docker compose -f docker-compose.example.yml up -d
```

To stop:

```bash
docker compose -f docker-compose.example.yml down
```

## Notes

- Node apps (AxeBCH/AxeDGB) use large disks and can take time to sync.
- If you're running on a remote host, review ports carefully before exposing them to the internet (Stratum, UIs, and especially RPC).

## Upgrades and pinning

The examples use image tags. For maximum reproducibility you can pin to digests:

```bash
docker image inspect ghcr.io/willitmod/axelive-release:v1.2-r1 --format '{{index .RepoDigests 0}}'
```

Then replace `image:` with the digest form.
