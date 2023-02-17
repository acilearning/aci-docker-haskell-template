#! /usr/bin/env sh
set -o errexit -o xtrace

# This script is run inside the devcontainer just after it's created. Use it
# for first-time setup.

git config --global --add safe.directory /workspaces/aci-docker-haskell-template

test -f cabal.project.local || cabal configure \
  --disable-optimization \
  --enable-tests \
  --test-show-details direct
