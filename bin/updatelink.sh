#!/bin/bash
REPO="$(pwd)"
CONFIG_HOME="${XDG_CONFIG_HOME:-/home/fcz/.var/app/io.neovim.nvim/config}"
LINK_NAME="$CONFIG_HOME/nvim-fcz"
rm "$LINK_NAME" || true
ln -s "$REPO" "$LINK_NAME"
ls -l "$LINK_NAME"
