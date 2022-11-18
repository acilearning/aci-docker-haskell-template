#! /usr/bin/env sh
set -o errexit -o xtrace

# This script is run on the *host* machine just before the devcontainer is
# created. Use it to configure things on the host before starting the
# devcontainer.

NETWORK=itprotv_bridge
docker network inspect "$NETWORK" \
  || docker network create "$NETWORK"

VOLUME=cabal-store
docker volume inspect "$VOLUME" \
  || docker volume create "$VOLUME"
