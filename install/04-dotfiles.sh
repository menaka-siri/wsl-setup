#!/bin/bash

# Script to clone and apply dotfiles using stow

set -e

echo "Applying dotfiles..."

# Ensure Git and Stow are installed
if ! command -v git &>/dev/null; then
    echo "Git is not installed. Please run 02-packages.sh first."
    exit 1
fi

if ! command -v stow &>/dev/null; then
    echo "Stow is not installed. Please run 02-packages.sh first."
    exit 1
fi

# Clone the dotfiles repository
DOTFILES_REPO="https://github.com/menaka-siri/dotfiles"
DOTFILES_DIR="$HOME/dotfiles"

if [ -d "$DOTFILES_DIR" ]; then
    echo "Dotfiles repository already exists at $DOTFILES_DIR."
else
    echo "Cloning dotfiles repository..."
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
fi

# Apply dotfiles using stow
cd "$DOTFILES_DIR"
echo "Applying dotfiles with stow..."
stow */

echo "Dotfiles applied successfully."