# AxeBench

Bitaxe fleet benchmarking and management (web UI).

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-axebench`
- Releases / image: `https://github.com/WillItMod/AxeBench-Release`

## What you can do with it

- Discover and group supported miners on your LAN
- Run benchmarks and compare performance over time
- Apply profiles/settings across a fleet

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

Umbrel handles ports and auth; access AxeBench through the Umbrel UI.

## Docker (self-host)

Use `apps/axebench/docker-compose.example.yml`.

### Quick start

From `apps/axebench/`:

```bash
docker compose -f docker-compose.example.yml up -d
```

Open:
- `http://localhost:5000`

