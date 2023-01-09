FROM public.ecr.aws/acilearning/haskell:9.2.5-623c378cf6a3a9baeac44085d2a6e37c1e19adbd
RUN \
  set -o errexit -o xtrace; \
  sudo apt-get update && \
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes --no-install-recommends postgresql-client
