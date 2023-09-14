#!/usr/bin/env bash

set -euo pipefail
readonly HERE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

set -x

TARGET_DIR=x86_64-unknown-linux-gnu

if [ ! -d "$HERE_DIR/$TARGET_DIR" ]; then
    cd $HERE_DIR
    cat x86_64-unknown-linux-gnu.tar.gz.* | tar xzvf -
fi
