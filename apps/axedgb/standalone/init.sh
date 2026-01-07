#!/bin/sh
set -eu

apk add --no-cache envsubst >/dev/null

mkdir -p /data/node /data/pool/config /data/pool/postgres

if [ ! -f /data/node/digibyte.conf ]; then
  envsubst < /standalone/templates/digibyte.conf.template > /data/node/digibyte.conf
  chown -R 1000:1000 /data/node || true
fi

if [ ! -f /data/pool/config/miningcore.json ]; then
  envsubst < /standalone/templates/miningcore.json.template > /data/pool/config/miningcore.json
  chown -R 1000:1000 /data/pool || true
fi

if [ ! -f /data/pool/config/coins.json ]; then
  cp -f /standalone/coins.json /data/pool/config/coins.json
  chown -R 1000:1000 /data/pool || true
fi

