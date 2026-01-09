# Umbrel app ids, ports, and connection strings

These values are taken from the WillItMod **main** Umbrel store packages.

Store:
- `https://github.com/WillItMod/umbrel-community-store`

## Apps

### AxeBench

- App id: `willitmod-axebench`
- UI: via Umbrel dashboard (internal port `5000`)

### AxeLive

- App id: `willitmod-axelive`
- UI: via Umbrel dashboard (internal port `5210`)

### AxeSim

- App id: `willitmod-axesim`
- UI: via Umbrel dashboard (internal port `8081`)
- Virtual miners (optional, host ports): `8091-8100`

### AxeBCH

- App id: `willitmod-dev-bch` (yes, "dev" is part of the id even in the main store)
- UI: via Umbrel dashboard (internal port `21212`)
- Stratum v1 (host port): `4567`
- Miner URL: `stratum+tcp://<your-umbrel-ip>:4567`

### AxeDGB

- App id: `willitmod-dev-dgb` (yes, "dev" is part of the id even in the main store)
- UI: via Umbrel dashboard (internal port `21213`)
- Stratum v1 (host ports):
  - SHA256: `5678` (`stratum+tcp://<your-umbrel-ip>:5678`)
  - Scrypt: `5679` (`stratum+tcp://<your-umbrel-ip>:5679`)

Notes:
- Stratum can be **locked to localhost** until you set a valid legacy payout address in Settings and restart the app.

### AxeBTC (alpha, DEV store)

- App id: `willitmod-dev-btc`
- UI: via Umbrel dashboard (internal port `21214`)
- Stratum v1 (host port): `7890`
- Miner URL: `stratum+tcp://<your-umbrel-ip>:7890`

Notes:
- This app currently ships via the **dev store**: `https://github.com/WillItMod/umbrel-dev-community-store`

## Verify on your node

To list installed app ids:

```bash
ls -1 ~/umbrel/app-data | grep -i willitmod
```

To see which containers and images are running:

```bash
sudo docker ps --format '{{.Names}}  {{.Image}}  {{.Status}}' | grep -i willitmod
```

