# syntax=docker/dockerfile:1
FROM ubuntu:VERSION

# Install packages
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y lsb-release software-properties-common bzip2 ca-certificates cmake curl earlyoom file g++ gcc git gnupg gzip jq make python3 python3-numpy tar xz-utils zip zstd xxd \
    && apt-add-repository "deb http://apt.llvm.org/`lsb_release -c | cut -f2`/ llvm-toolchain-`lsb_release -c | cut -f2`-18 main" \
    && apt-get update \
    && apt-get install -y clang-18 lld-18 \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'

RUN  which clang
