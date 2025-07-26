# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# Install packages
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y ca-certificates curl jq g++ gcc git make python3 \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'
