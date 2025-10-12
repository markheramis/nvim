#!/bin/bash
wget https://ziglang.org/builds/zig-x86_64-linux-0.16.0-dev.699+529aa9f27.tar.xz -O /tmp/zig.tar.xz
mkdir -p /opt/zig
tar -xvf /tmp/zig.tar.xz -C /opt/zig --strip-components=1
export PATH="/opt/zig:$PATH"

git clone https://github.com/zigtools/zls --depth 1 /opt/zls
cd /opt/zls
zig build -Doptimize=ReleaseSafe
ln -s /opt/zls/zig-out/bin/zls /usr/local/bin/zls