# AxeDGB

DigiByte full node + Miningcore solo pool with an Axe-style dashboard.

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-dev-dgb`

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

### Miner connection (SHA256 pool)

- URL: `stratum+tcp://<your-umbrel-ip>:5678`
- Username (recommended): `YOUR_DGB_ADDRESS.<worker-name>`
- Password: anything

### Payout address rules

- Payout address must be legacy/base58 DigiByte (starts with `D`/`S`).
- `dgb1...` bech32 payout is not supported yet.

### Node RAM (dbcache)

Recent builds include a `Node RAM (dbcache)` selector:
- `Auto` (recommended for most systems)
- `1GB / 2GB / 4GB / 8GB`

This controls DigiByte Core's `-dbcache` and can reduce RAM usage on small hosts.

## Docker (self-host)

Use `apps/axedgb/docker-compose.example.yml`.

### Quick start

From `apps/axedgb/`:

```bash
APP_PASSWORD=change-me
docker compose -f docker-compose.example.yml up -d
```

Open the UI:
- `http://localhost:21213`

Connect miners:
- SHA256: `stratum+tcp://<your-host-ip>:5678`
- Scrypt: `stratum+tcp://<your-host-ip>:5679`

