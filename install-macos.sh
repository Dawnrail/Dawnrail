#!/bin/sh
set -eu

archive_url='https://github.com/angjones3005/Xpecter/releases/latest/download/xpecter-macos-universal.zip'
install_dir="$HOME/Applications"
temp_dir=$(mktemp -d)

trap 'rm -rf "$temp_dir"' EXIT

mkdir -p "$install_dir"
curl -fL "$archive_url" -o "$temp_dir/xpecter.zip"
rm -rf "$install_dir/xpecter.app"
ditto -x -k "$temp_dir/xpecter.zip" "$install_dir"
open "$install_dir/xpecter.app"