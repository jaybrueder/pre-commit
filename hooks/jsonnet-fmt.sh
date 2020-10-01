#!/bin/bash
set -e

export PATH=$PATH:/usr/local/bin

for file in "$@"; do
  pushd "$(dirname "$file")" >/dev/null
  jsonnetfmt -i "$(basename "$file")"
  popd >/dev/null
done