#!/bin/bash

# Script to install Homebrew on Ubuntu WSL

set -e

echo "Installing Homebrew..."

# Check if Homebrew is already installed
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed."
else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH
    echo "Adding Homebrew to PATH..."
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Verify installation
echo "Verifying Homebrew installation..."
brew --version

echo "Homebrew installation completed."