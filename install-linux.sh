#!/bin/sh
set -eu

archive_url='https://github.com/angjones3005/Xpecter/releases/latest/download/xpecter-linux-amd64.tar.gz'
install_dir="$HOME/.local/opt/xpecter"
bin_dir="$HOME/.local/bin"
temp_dir=$(mktemp -d)

trap 'rm -rf "$temp_dir"' EXIT

curl -fL "$archive_url" -o "$temp_dir/xpecter.tar.gz"
rm -rf "$install_dir"
mkdir -p "$install_dir" "$bin_dir"
tar -xzf "$temp_dir/xpecter.tar.gz" -C "$install_dir"
chmod +x "$install_dir/xpecter"
ln -sf "$install_dir/xpecter" "$bin_dir/xpecter"

case ":$PATH:" in
  *":$bin_dir:"*) ;;
  *) printf '%s\n' "Xpecter is installed. Add $bin_dir to PATH, then run: xpecter" ;;
esac