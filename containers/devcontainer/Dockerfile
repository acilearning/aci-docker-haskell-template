FROM public.ecr.aws/acilearning/haskell:9.2.5-7bd251ac55c29968002b10e3d012562e86d3f218
RUN \
  set -o errexit -o xtrace; \
  sudo apt-get update && \
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends postgresql-client
