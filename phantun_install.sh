#!/usr/bin/bash

if ! command -v unzip &>/dev/null; then
    echo "unzip not found, installing..."
    sudo apt update && sudo apt install -y unzip
fi

wget https://github.com/dndx/phantun/releases/download/v0.8.1/phantun_x86_64-unknown-linux-gnu.zip -O /tmp/phantun.zip


if [ -f /tmp/phantun.zip ]; then
    unzip -o /tmp/phantun.zip -d /usr/bin/
fi
