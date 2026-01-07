# Umbrel store management (advanced)

Umbrel clones app stores under:

- `~/umbrel/app-stores/`

If you have multiple WillItMod stores installed, you may see several folders with a suffix like `-github-<hash>`.

## Check which store you installed

```bash
ls -la ~/umbrel/app-stores | grep -i willitmod
```

## Check the latest commit Umbrel pulled (per store)

```bash
cd ~/umbrel/app-stores/<store-folder>
git remote -v
git branch --show-current
git log -1 --oneline
```

## If a store is stale

Umbrel normally updates stores automatically. If it doesn't:
- remove and re-add the store in the Umbrel UI, or
- restart Umbrel services (advanced; only if you know what you're doing)

