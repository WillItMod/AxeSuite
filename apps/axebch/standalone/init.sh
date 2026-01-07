#!/bin/sh
set -eu

apk add --no-cache envsubst >/dev/null

mkdir -p /data/node /data/pool/config /data/pool/www/pool /data/pool/www/users

if [ ! -f /data/node/bitcoin.conf ]; then
  envsubst < /standalone/templates/bitcoin.conf.template > /data/node/bitcoin.conf
  chown -R 1000:1000 /data/node || true
fi

if [ ! -f /data/pool/config/ckpool.conf ]; then
  envsubst < /standalone/templates/ckpool.conf.template > /data/pool/config/ckpool.conf
  chown -R 1000:1000 /data/pool || true
fi

