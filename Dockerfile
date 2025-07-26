# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# Install ca-certificates git jq gcc g++
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y ca-certificates git jq gcc g++ \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'
