#!/bin/sh
set -eu

echo "[axebch] BCHN entrypoint starting"

extra=""
if [ -f /data/.reindex-chainstate ]; then
  echo "[axebch] Reindex requested (chainstate)."
  rm -f /data/.reindex-chainstate || true
  extra="-reindex-chainstate"
fi

echo "[axebch] Exec: bitcoind -datadir=/data -printtoconsole $extra"
exec bitcoind -datadir=/data -printtoconsole $extra

