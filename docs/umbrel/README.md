# Umbrel Stores

## Add the WillItMod main store

Use the Umbrel UI:

1) Open Umbrel dashboard
2) `Settings -> App Stores -> Add`
3) Paste: `https://github.com/WillItMod/umbrel-community-store`
4) Install/update apps from the store view

## Add the WillItMod dev store

Use the same flow:

1) Open Umbrel dashboard
2) `Settings -> App Stores -> Add`
3) Paste: `https://github.com/WillItMod/umbrel-dev-community-store`
4) Install/update apps from the store view

See `docs/umbrel/apps.md` for current app ids, ports, versions, and miner connection strings.
See `docs/releases.md` for the current release/store matrix and the best changelog source per app.

## What gets installed

Umbrel app packages usually consist of:
- `umbrel-app.yml` (name, version, widgets)
- `docker-compose.yml` (services/images/ports/volumes)
- icons/assets

App state is stored under:

- `~/umbrel/app-data/<app-id>/data`

## Versions

Umbrel updates are driven by:
- the store's `version` field in `umbrel-app.yml`, and
- the image tag pinned in the app's `docker-compose.yml`

If a store briefly pointed to a missing tag, nodes can get stuck updating until they're recreated. See:

- `docs/umbrel/troubleshooting.md`
- `docs/umbrel/cli.md`
- `docs/umbrel/store-management.md`
