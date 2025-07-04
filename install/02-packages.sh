#!/bin/bash

# Script to install required packages using Homebrew

set -e

echo "Installing required packages..."

# Ensure Homebrew is available
if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Please run 01-homebrew.sh first."
    exit 1
fi

# List of packages to install
PACKAGES=(
    zsh
    git
    stow
    tmux
    neovim
)

# Install each package
for package in "${PACKAGES[@]}"; do
    if brew list "$package" &>/dev/null; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        brew install "$package"
    fi
done

echo "All packages installed successfully."