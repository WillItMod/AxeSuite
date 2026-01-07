# AxeSim

Virtual miner simulator for testing AxeLive and AxeBench without real hardware.

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-axesim`
- Releases / image: `https://github.com/WillItMod/AxeSim-Release`

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

## Docker (self-host)

Use `apps/axesim/docker-compose.example.yml`.

The simulator publishes 10 virtual miner endpoints on `8091-8100` by default.

### Quick start

From `apps/axesim/`:

```bash
docker compose -f docker-compose.example.yml up -d
```

Open:
- `http://localhost:8081`

The virtual miners will be reachable on:
- `http://localhost:8091` through `http://localhost:8100`

