FROM public.ecr.aws/acilearning/haskell:9.4.4-be16c1942fc0c18391314839fdb1bd2e793c4287
RUN \
  set -o errexit -o xtrace; \
  sudo apt-get update && \
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends postgresql-client
