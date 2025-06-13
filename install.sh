#!/usr/bin/env bash

set -e

# Create the directory if it doesn't exist
mkdir -p "$HOME/.bash-utils/aliases"

# Copy files into ~/.bash-utils
cp -r aliases "$HOME/.bash-utils/"
cp functions.sh "$HOME/.bash-utils/"
cp bash_aliases "$HOME/.bash-utils/"

# Symlink ~/.bash_aliases to the custom one
ln -sf "$HOME/.bash-utils/bash_aliases" "$HOME/.bash_aliases"

echo "✅ Installed. Open a new terminal or run: source ~/.bashrc"
