#!/bin/sh
set -eu

REPO_INSTALL_URL="https://argvus.github.io/repo-install.sh"

echo "==> Installing ARGVUS..."

curl -fsSL "$REPO_INSTALL_URL" | sh

echo "==> Installing ARGVUS packages..."

sudo pacman -Syu argvus --overwrite="*"

echo "==> ARGVUS installation completed."
echo "    Log out and select the ARGVUS session to start using it."
