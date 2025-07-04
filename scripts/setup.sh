#!/bin/bash

# Main setup script to run all installation steps

set -e

echo "Starting WSL development environment setup..."

# Define the installation steps
STEPS=(
    "install/01-homebrew.sh"
    "install/02-packages.sh"
    "install/03-oh-my-zsh.sh"
    "install/04-dotfiles.sh"
)

# Execute each step
for step in "${STEPS[@]}"; do
    echo "Running $step..."
    bash "$step"
    echo "$step completed."
done

echo "WSL development environment setup completed successfully."