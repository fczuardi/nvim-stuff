#!/bin/bash
REPO="/home/fcz/github/nvim-stuff"
CURRENT_BRANCH=$(git symbolic-ref --short -q HEAD)
LINK_NAME="/home/fcz/.config/nvim-fcz"
rm "$LINK_NAME"
ln -s "$REPO/$CURRENT_BRANCH" "$LINK_NAME"
ls -l "$LINK_NAME"
