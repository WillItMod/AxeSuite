# Umbrel via SSH (advanced)

Use SSH for debugging and recovery. Umbrel is designed to be managed via the UI; manual changes can be overwritten by updates.

## Find installed app ids

```bash
ls -1 ~/umbrel/app-data
```

Tip (Axe apps):

```bash
ls -1 ~/umbrel/app-data | grep -i willitmod
```

## See containers for an app

Example (AxeBCH app id in the main store is currently `willitmod-dev-bch`):

```bash
sudo docker ps --format '{{.Names}}  {{.Image}}  {{.Status}}' | grep willitmod-dev-bch
```

## Force recreate an app from its pinned image tag

This is the most reliable recovery when the UI is stuck on "Updating 1%".

```bash
APPID=willitmod-dev-bch
cd ~/umbrel/app-data/$APPID

sudo docker compose down
sudo docker compose pull
sudo docker compose up -d --force-recreate
```

## About `.env` (Umbrel injected variables)

Umbrel apps typically rely on a local `.env` inside the app folder for values like:
- `APP_DATA_DIR`
- `APP_PASSWORD`
- `NETWORK_IP`
- `JWT_SECRET` (some apps)

You usually do not need to touch this, but if you run `docker compose` manually from SSH, make sure you're in the app folder so Compose loads `.env` automatically:

```bash
cd ~/umbrel/app-data/<app-id>
sudo docker compose ps
```

## Change a pinned image tag (emergency only)

If the app was pinned to a tag that doesn't exist, you can edit the local compose file.

Example:

```bash
APPID=willitmod-dev-bch
cd ~/umbrel/app-data/$APPID

grep -n "axebch-app" docker-compose.yml
sudo sed -i 's/axebch-app-umbrel-dev:0\\.7\\.88/axebch-app-umbrel-dev:0.7.86/g' docker-compose.yml

sudo docker compose down
sudo docker compose pull
sudo docker compose up -d --force-recreate
```

## Logs

```bash
sudo docker logs --tail 200 <container-name>
```

