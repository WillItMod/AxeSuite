# AxeLive

Real-time miner monitoring and thermal control (web UI).

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-axelive`
- Downloads / image: `https://github.com/WillItMod/AxeLive-Release`

## What you can do with it

- Monitor miners in real time (telemetry + trends)
- Configure safe temperature/fan governance
- Manage miners as groups (where supported)

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

Umbrel handles ports and auth; access AxeLive through the Umbrel UI.

## Docker (self-host)

Use `apps/axelive/docker-compose.example.yml`.

### Quick start

From `apps/axelive/`:

```bash
docker compose -f docker-compose.example.yml up -d
```

Open:
- `http://localhost:5210`

