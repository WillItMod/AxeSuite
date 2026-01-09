# AxeBTC (alpha)

AxeBTC is a Bitcoin full node + solo pool app, aligned with the AxeBCH/AxeDGB UX.

It currently ships as an **Umbrel dev-store alpha**.

## Links

- Umbrel dev store package: `https://github.com/WillItMod/umbrel-dev-community-store/tree/main/willitmod-dev-btc`

## Umbrel (dev-store)

Add the dev store:

- `https://github.com/WillItMod/umbrel-dev-community-store`

Then install `AxeBTCF`.

### Miner connection

- URL: `stratum+tcp://<your-umbrel-ip>:7890`
- Username: `<worker-name>` (optional)
- Password: anything

### Payout address rules

- BTC payout addresses support bech32 (`bc1...`) and legacy (`1...` / `3...`).
- Bitcoin Cash CashAddr (`q...` / `p...`) is not supported.

### Notes

- Set your payout address in the app Settings tab.
- Some builds include an optional AxePoW mode for Fractal Bitcoin merged mining (disabled by default).

