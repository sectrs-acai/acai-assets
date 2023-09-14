#!/usr/bin/env bash
set -euo pipefail
readonly HERE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

dir=x86_64-unknown-linux-gnu
target=x86_64-unknown-linux-gnu.tar.gz

# rm -rf $target_dir
# mkdir -p $target_dir

cd $HERE_DIR
tar cvzf - $dir | split --bytes=90MB - ${target}.
