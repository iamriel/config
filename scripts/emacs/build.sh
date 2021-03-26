#!/usr/bin/env bash
set -euo pipefail

cd ~/emacs
./autogen.sh
./configure --with-nativecomp
make -j$(nproc)
