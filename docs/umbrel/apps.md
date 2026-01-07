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
- Stratum v1 (host port): `5678`
- Miner URL: `stratum+tcp://<your-umbrel-ip>:5678`

## Verify on your node

To list installed app ids:

```bash
ls -1 ~/umbrel/app-data | grep -i willitmod
```

To see which containers and images are running:

```bash
sudo docker ps --format '{{.Names}}  {{.Image}}  {{.Status}}' | grep -i willitmod
```

