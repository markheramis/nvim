#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
export PATH="$HOME/.cargo/bin:$PATH"
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$HOME/.bashrc"

git clone https://github.com/rust-lang/rust-analyzer.git --depth 1 /opt/rust-analyzer
cd /opt/rust-analyzer
cargo xtask install --server