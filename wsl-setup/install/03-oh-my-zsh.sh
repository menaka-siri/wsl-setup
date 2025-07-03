#!/bin/bash

# Script to install Oh-My-Zsh

set -e

echo "Installing Oh-My-Zsh..."

# Ensure Zsh is installed
if ! command -v zsh &>/dev/null; then
    echo "Zsh is not installed. Please run 02-packages.sh first."
    exit 1
fi

# Check if Oh-My-Zsh is already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh-My-Zsh is already installed."
else
    # Install Oh-My-Zsh
    echo "Installing Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Optional: Install plugins and themes
echo "Installing Zsh plugins and themes..."
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions" || true
git clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k" || true

# Set Powerlevel10k as the default theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

echo "Oh-My-Zsh installation completed."