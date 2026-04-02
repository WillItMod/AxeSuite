# AxeBCH

Bitcoin Cash full node (BCHN) + solo pool (ckpool) with an Axe-style dashboard.

## Links

- Umbrel store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-dev-bch`

## Umbrel

Install from the WillItMod main store:

- `https://github.com/WillItMod/umbrel-community-store`

For preview / test builds, check the WillItMod dev store too:

- `https://github.com/WillItMod/umbrel-dev-community-store`

### Miner connection

- URL: `stratum+tcp://<host-ip>:4567`
- If the miner UI wants separate fields: host = `<host-ip>`, port = `4567`
- Username: `<worker-name>` (optional)
- Password: anything

Use the IP of the machine hosting the app:

- On `5tratumOS`, use the `5tratumOS` machine's LAN IP
- On `Umbrel`, use the Umbrel host IP

### Payout address

- Set your payout address in `Settings`.
- For maximum compatibility, use a legacy BCH Base58 address (`1...` / `3...`).
- Many wallets show CashAddr (`q...` / `p...`); AxeBCH converts it locally for ckpool compatibility.

### Difficulty presets

ckpool expects **whole-number** difficulties. Fractional difficulties (like `0.001`) are not supported and are ignored/fallback to defaults.

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
- `stratum+tcp://<host-ip>:4567`
