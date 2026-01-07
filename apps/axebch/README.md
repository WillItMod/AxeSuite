# AxeBCH

Bitcoin Cash full node (BCHN) + solo pool (ckpool) with an Axe-style dashboard.

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-dev-bch`

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

### Miner connection

- URL: `stratum+tcp://<your-umbrel-ip>:4567`
- Username: `<worker-name>` (optional)
- Password: anything

### Payout address

- Set your payout address in `Settings`.
- For maximum compatibility, use a legacy BCH Base58 address (`1...` / `3...`).
- Many wallets show CashAddr (`q...` / `p...`); AxeBCH converts it locally for ckpool compatibility.

## Docker (self-host)

Use `apps/axebch/docker-compose.example.yml`.

Notes:
- This runs a full BCH node and can use large disk.
- Review ports before exposing anything to the internet.

### Quick start

From `apps/axebch/`:

```bash
APP_PASSWORD=change-me
PAYOUT_ADDRESS=CHANGEME_BCH_PAYOUT_ADDRESS
docker compose -f docker-compose.example.yml up -d
```

Then open the UI:
- `http://localhost:21212`

And connect miners to:
- `stratum+tcp://<your-host-ip>:4567`

