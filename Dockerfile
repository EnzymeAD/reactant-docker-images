# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# Install packages
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y bzip2 ca-certificates clang cmake curl earlyoom file g++ gcc git gnupg gzip jq lld make python3 python3-numpy tar xz-utils zip zstd \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'
