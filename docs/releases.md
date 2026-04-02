# Releases, Versions, And Changelog Sources

This page is the central reference for current app coverage, current store versions, and the best changelog source for each app family.

## How To Read This

- Main store versions come from `WillItMod/umbrel-community-store`.
- Dev store versions come from `WillItMod/umbrel-dev-community-store`.
- Native/desktop app release notes still live in their dedicated release repos.
- `5tratumOS` release assets live in `WillItMod/5tratum` GitHub Releases. Repo tags may move ahead of the latest published release entry.
- Where an app does not have a dedicated public release page, the last manifest-change date is the best packaging-date signal.

## 5tratumOS

- Release repo: `https://github.com/WillItMod/5tratum`
- Latest published release observed on `2026-04-02`: `v0.4.30`
- Latest pre-release observed on `2026-04-02`: `v0.4.30-dev`
- Source of truth for published assets: GitHub Releases
- Source of truth for tag train: GitHub tags
- Documentation note: do not trust a hardcoded README banner alone for "latest" version questions

## Main Store Snapshot

- Synced from `umbrel-community-store` manifests

- `AxeBench` - `4.0.19` (manifest last touched `2026-02-21`)
- `AxeLive` - `1.3` (manifest last touched `2026-02-05`)
- `AxeMIG` - `0.1.17` (manifest last touched `2026-01-14`)
- `AxeSim` - `1.0.9` (manifest last touched `2025-12-29`)
- `AxeBTC` - `0.7.82.4` (manifest last touched `2026-02-05`)
- `AxeBCH` - `0.7.153` (manifest last touched `2026-02-05`)
- `AxeDGB` - `0.9.166` (manifest last touched `2026-03-04`)

## Dev Store Snapshot

- Synced from `umbrel-dev-community-store` manifests

- `AxeBCH2` - `0.1.28-dev` (manifest last touched `2026-04-02`)
- `AxeBench (Dev)` - `4.0.20` (manifest last touched `2026-03-19`)
- `AxeLive (Dev)` - `1.4-dev` (manifest last touched `2026-02-16`)
- `AxeMIG` - `0.1.17` (manifest last touched `2026-02-06`)
- `AxeBC2` - `0.1.6-dev` (manifest last touched `2026-02-06`)
- `AxeBCH` - `0.8.3-rc1-dev` (manifest last touched `2026-03-04`)
- `AxeBTC` - `0.7.82.4-dev` (manifest last touched `2026-02-06`)
- `AxeDGB` - `0.9.166-dev` (manifest last touched `2026-03-18`)
- `PowPow` - `0.2.12-dev` (manifest last touched `2026-04-02`)
- `AxePPC` - `0.2.30-dev` (manifest last touched `2026-02-16`)
- `AxeXEC` - `0.1.10-dev` (manifest last touched `2026-02-10`)

## Best Changelog Sources

- `5tratumOS`
  - `WillItMod/5tratum` GitHub Releases
  - `WillItMod/5tratum` tags

- `AxeBench`
  - `WillItMod/AxeBench-Release`
  - `AxeBench-Release/docs/AxeBench_v3.0.0_RC1_FEATURES.md`
  - store manifests for current packaged version

- `AxeLive`
  - `WillItMod/AxeLive-Release`
  - store manifests for current packaged version

- `AxeSim`
  - `WillItMod/AxeSim-Release`
  - store manifests for current packaged version

- `AxeMIG`
  - `WillItMod/AxeMIG-Release`
  - store manifests for current packaged version

- `AxeBCH`
  - `umbrel-community-store` / `umbrel-dev-community-store` manifests
  - `AxeSuite/apps/axebch/README.md`

- `AxeBCH2`
  - `umbrel-dev-community-store/willitmod-dev-axebch2/umbrel-app.yml`
  - `WillItMod/AxeBCH2`

- `AxeBC2`
  - `umbrel-dev-community-store/willitmod-dev-bc2/umbrel-app.yml`
  - `WillItMod/AxeBC2`

- `AxePPC`
  - `umbrel-dev-community-store/willitmod-dev-ppc/umbrel-app.yml`
  - `WillItMod/AxePPC`

- `AxeDGB`
  - main/dev store manifests
  - `AxeSuite/apps/axedgb/README.md`

- `AxeBTC`
  - main/dev store manifests
  - `AxeSuite/apps/axebtc/README.md`

- `AxeXEC`
  - `umbrel-dev-community-store/willitmod-dev-xec/umbrel-app.yml`
  - `WillItMod/AxeXEC`

- `PowPow`
  - `umbrel-dev-community-store/willitmod-dev-powpow/umbrel-app.yml`
  - `umbrel-dev-community-store/willitmod-dev-powpow/LOCAL_NOTES.md`

## Recent Change Trail

This is not a perfect human-written changelog for every app, but it is a reliable "what moved recently" trail.

### 5tratumOS

- `2026-04-02` - `GitHub Releases: v0.4.30`
- `2026-04-02` - `GitHub Releases: v0.4.30-dev`
- `2026-04-02` - `GitHub Releases: v0.4.29`

### AxeBench

- `2026-02-21` - `willitmod-axebench: bump to 4.0.19`
- `2026-02-20` - `AxeBench v4.0.18`
- `2026-02-20` - `AxeBench v4.0.11`

### AxeLive

- `2026-02-05` - `AxeLive: bump to 1.3`
- `2025-12-29` - `Fix community store media URLs`

### AxeMIG

- `2026-01-14` - `Add AxeMIG 0.1.17`
- `2026-01-14` - `Fix AxeMIG metadata`

### AxeSim

- `2025-12-29` - `AxeSim v1.0.9`
- `2025-12-29` - `AxeSim v1.0.8`
- `2025-12-29` - `AxeSim: publish miner ports 8091-8100`

### AxeBTC

- `2026-02-05` - `Update Axe apps versions/channels; add BC2/XEC`
- `2026-02-05` - `Point AxeBTC icon at cache-bust filename`

### AxeBCH

- `2026-03-04` - `AxeBCH DEV 0.8.3-rc1: pin known-good ckpool + app v0.8.3`
- `2026-03-04` - `AxeBCH DEV 0.8.2-rc1: switch ckpool image to wim-solo-ckpool`
- `2026-03-03` - `AxeBCH DEV: v0.8.1-rc1, BCHN v29.0.0-wm2, WillItMod ckpool`

### AxeDGB

- `2026-03-18` - `AxeDGB DEV: bump to 0.9.166-dev`
- `2026-03-17` - `Update AxeDGB to 0.9.165-dev`

### AxeBCH2

- `2026-04-02` - `Publish AxeBCH2 0.1.28-dev`
- `2026-04-02` - `Publish AxeBCH2 0.1.27-dev`
- `2026-04-02` - `Publish AxeBCH2 0.1.26-dev`

### AxeBC2

- `2026-02-06` - `AxeBC2 DEV: bump to 0.1.6-dev`
- `2026-02-06` - `DEV store: disclaimers + AxeBC2 0.1.5-dev`

### AxePPC

- `2026-02-16` - `axeppc(dev): harden vardiff clamps and rebalance defaults`
- `2026-02-07` - `AxePPC dev: bump to 0.2.29`
- `2026-02-07` - `AxePPC dev: bump to 0.2.28`

### PowPow

- `2026-04-02` - `Publish PowPow 0.2.12-dev`
- `2026-04-02` - `Publish PowPow 0.2.11-dev`
- `2026-03-20` - `Bump PowPow dev package to 0.2.10`

### AxeXEC

- `2026-02-10` - `AxeXEC dev: bump to 0.1.10-dev`
- `2026-02-09` - `AxeXEC dev: fix ARM page-size crash; bump to 0.1.9-dev`
- `2026-02-07` - `AxeXEC dev: bump to 0.1.8-dev`
