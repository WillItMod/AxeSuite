# AxeBTC

AxeBTC is a Bitcoin full node + solo pool app, aligned with the AxeBCH/AxeDGB UX.

It ships through the WillItMod Umbrel stores. Use the main store for the stable/recommended track and the dev store for preview builds.

## Links

- Umbrel main store package: `https://github.com/WillItMod/umbrel-community-store/tree/main/willitmod-btc`
- Umbrel dev store package: `https://github.com/WillItMod/umbrel-dev-community-store/tree/main/willitmod-dev-btc`
- Current version matrix: `docs/releases.md`

## Umbrel

Add the main store:

- `https://github.com/WillItMod/umbrel-community-store`

For preview builds, add the dev store too:

- `https://github.com/WillItMod/umbrel-dev-community-store`

Then install `AxeBTC`.

### Miner connection

- URL: `stratum+tcp://<host-ip>:7890`
- If the miner UI wants separate fields: host = `<host-ip>`, port = `7890`
- Username: `<worker-name>` (optional)
- Password: anything

Use the IP of the machine hosting the app:

- On `5tratumOS`, use the `5tratumOS` machine's LAN IP
- On `Umbrel`, use the Umbrel host IP

### Payout address rules

- BTC payout addresses support bech32 (`bc1...`) and legacy (`1...` / `3...`).
- Bitcoin Cash CashAddr (`q...` / `p...`) is not supported.

### Notes

- Set your payout address in the app Settings tab.
- Some builds include an optional AxePoW mode for Fractal Bitcoin merged mining (disabled by default).
- See `docs/releases.md` for the current stable/dev version split and changelog pointers.
