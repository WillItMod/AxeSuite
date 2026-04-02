# Umbrel app ids, ports, versions, and connection strings

These values are taken from the WillItMod Umbrel store manifests.

Stores:

- Main: `https://github.com/WillItMod/umbrel-community-store`
- Dev: `https://github.com/WillItMod/umbrel-dev-community-store`

Use `<host-ip>` as the machine IP hosting the app stack. On `5tratumOS`, that is the `5tratumOS` box's LAN IP. On `Umbrel`, that is the Umbrel host IP. If the miner UI wants separate fields, split the URL into host + port instead of pasting the whole string blindly.

## Main store apps

### AxeBench

- App id: `willitmod-axebench`
- Version: `4.0.19`
- UI: via Umbrel dashboard (internal port `5000`)

### AxeLive

- App id: `willitmod-axelive`
- Version: `1.3`
- UI: via Umbrel dashboard (internal port `5210`)

### AxeSim

- App id: `willitmod-axesim`
- Version: `1.0.9`
- UI: via Umbrel dashboard (internal port `8081`)
- Virtual miners (optional, host ports): `8091-8100`

### AxeMIG

- App id: `willitmod-axemig`
- Version: `0.1.17`
- UI: via Umbrel dashboard (internal port `12150`)

### AxeBCH

- App id: `willitmod-dev-bch` (yes, `dev` is part of the id even in the main store)
- Version: `0.7.153`
- UI: via Umbrel dashboard (internal port `21212`)
- Stratum v1 (host port): `4567`
- Miner URL: `stratum+tcp://<host-ip>:4567`

### AxeBTC

- App id: `willitmod-btc`
- Version: `0.7.82.4`
- UI: via Umbrel dashboard (internal port `21215`)
- Stratum v1 (host port): `7890`
- Miner URL: `stratum+tcp://<host-ip>:7890`

### AxeDGB

- App id: `willitmod-dev-dgb` (yes, `dev` is part of the id even in the main store)
- Version: `0.9.166`
- UI: via Umbrel dashboard (internal port `21213`)
- Stratum v1 (host ports):
  - SHA256: `5678` (`stratum+tcp://<host-ip>:5678`)
  - Scrypt: `5679` (`stratum+tcp://<host-ip>:5679`)

Notes:

- Some node+pool apps can keep Stratum locked to localhost until you set a valid payout address in Settings and restart the app.

## Dev store apps

### AxeBench (Dev)

- App id: `willitmod-dev-axebench`
- Version: `4.0.20`
- UI: via Umbrel dashboard (internal port `5000`)

### AxeLive (Dev)

- App id: `willitmod-dev-axelive`
- Version: `1.4-dev`
- UI: via Umbrel dashboard (internal port `5210`)

### AxeMIG (Dev)

- App id: `willitmod-dev-axemig`
- Version: `0.1.17`
- UI: via Umbrel dashboard (internal port `12150`)

### AxeBCH2

- App id: `axebch2`
- Version: `0.1.28-dev`
- UI: via Umbrel dashboard (internal port `21223`)
- Stratum v1 (host port): `9265`
- Miner URL: `stratum+tcp://<host-ip>:9265`

### AxeBC2

- App id: `willitmod-dev-bc2`
- Version: `0.1.6-dev`
- UI: via Umbrel dashboard (internal port `21219`)
- Stratum v1 (host port): `2345`
- Miner URL: `stratum+tcp://<host-ip>:2345`

### AxeBCH (Dev)

- App id: `willitmod-dev-bch`
- Version: `0.8.3-rc1-dev`
- UI: via Umbrel dashboard (internal port `21212`)
- Stratum v1 (host port): `4567`
- Miner URL: `stratum+tcp://<host-ip>:4567`

### AxeBTC (Dev)

- App id: `willitmod-dev-btc`
- Version: `0.7.82.4-dev`
- UI: via Umbrel dashboard (internal port `21215`)
- Stratum v1 (host port): `7890`
- Miner URL: `stratum+tcp://<host-ip>:7890`

### AxeDGB (Dev)

- App id: `willitmod-dev-dgb`
- Version: `0.9.166-dev`
- UI: via Umbrel dashboard (internal port `21213`)
- Stratum v1 (host ports):
  - SHA256: `5678` (`stratum+tcp://<host-ip>:5678`)
  - Scrypt: `5679` (`stratum+tcp://<host-ip>:5679`)

### PowPow

- App id: `axepowpow`
- Version: `0.2.12-dev`
- UI: via Umbrel dashboard (internal port `21221`)
- Stratum v1 (host port): `9555`
- Miner URL: `stratum+tcp://<host-ip>:9555`

### AxePPC

- App id: `willitmod-dev-ppc`
- Version: `0.2.30-dev`
- UI: via Umbrel dashboard (internal port `21220`)
- Stratum v1 (host port): `8765`
- Miner URL: `stratum+tcp://<host-ip>:8765`

### AxeXEC

- App id: `willitmod-dev-xec`
- Version: `0.1.10-dev`
- UI: via Umbrel dashboard (internal port `21218`)
- Stratum v1 (host port): `4321`
- Miner URL: `stratum+tcp://<host-ip>:4321`

## Verify on your node

To list installed app ids:

```bash
ls -1 ~/umbrel/app-data | grep -i willitmod
```

To see which containers and images are running:

```bash
sudo docker ps --format '{{.Names}}  {{.Image}}  {{.Status}}' | grep -i willitmod
```
