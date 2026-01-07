# Umbrel Troubleshooting

## "Updating 1%" (stuck)

This almost always means Umbrel is trying to pull an image tag that is:
- slow to download, or
- missing (`manifest unknown`), or
- failing to start after pull

### Step 1 - confirm what tag is pinned locally

```bash
APPID=willitmod-dev-bch
cd ~/umbrel/app-data/$APPID
grep -n "image:" docker-compose.yml
```

### Step 2 - force a clean pull + recreate

```bash
APPID=willitmod-dev-bch
cd ~/umbrel/app-data/$APPID
sudo docker compose down
sudo docker compose pull
sudo docker compose up -d --force-recreate
```

### Step 3 - check for "manifest unknown"

```bash
sudo journalctl -u umbrel.service -n 200 --no-pager | grep -E "manifest unknown|apps.update"
```

If you see `manifest unknown`, the pinned tag does not exist in GHCR.

Workarounds:
- wait for the GHCR build to finish (if a new version is being published), or
- manually pin to a known-good tag and recreate (see `docs/umbrel/cli.md`)

## App shows "Starting" (node syncing)

Node-backed apps can take time to become "Running":
- BCH/DGB nodes need to load blocks and validate state
- health checks may show `starting` for several minutes

Check container health and node RPC:

```bash
sudo docker ps --format '{{.Names}}  {{.Status}}' | grep -E 'bch|dgb'
```

## JWT errors / login failures

If you see `JsonWebTokenError: secret or public key must be provided`, `app_proxy` is missing `JWT_SECRET`.

Fix:
- prefer restarting the app from Umbrel UI (it injects env vars)
- if running manually, ensure the app's `.env` has `JWT_SECRET=` and your compose loads it

## "Permission denied" when running docker

On some Umbrel installs, Docker requires root:

```bash
sudo docker ps
```

