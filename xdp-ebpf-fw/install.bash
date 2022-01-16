#!/usr/bin/env bash

set -euf -o pipefail

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install            \
    build-essential             \
    libelf-dev                  \
    ca-certificates             \
    ca-certificates-java        \
    zlib1g-dev                  \
    llvm-dev                    \
    libclang-dev                \
    linux-headers-$(uname -r)

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#rustup install 1.55
#rustup default 1.55
cargo install cargo-bpf
cargo bpf build
cargo bpf load -i eth0 target/bpf/programs/fw/fw.elf