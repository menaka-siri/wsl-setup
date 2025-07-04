# WSL Development Setup Scripts

This repository contains a set of scripts to automate the setup of a development environment in Ubuntu WSL. The setup includes essential tools and configurations for a productive workflow.

## Directory Structure

```plaintext
.
├── install/
│   ├── 01-homebrew.sh       # Install Homebrew
│   ├── 02-packages.sh       # Install required packages (zsh, git, stow, tmux, neovim)
│   ├── 03-oh-my-zsh.sh      # Install Oh-My-Zsh
│   ├── 04-dotfiles.sh       # Clone and apply dotfiles
│   └── README.md            # Documentation for the install scripts
├── scripts/
│   ├── setup.sh             # Main entry point to run all scripts
│   └── helpers.sh           # Helper functions for logging and error handling
├── README.md                # Main documentation
```

## Scripts Overview

### `install/01-homebrew.sh`
- Installs Homebrew as the default package manager.
- Ensures `apt` remains functional.

### `install/02-packages.sh`
- Installs the following tools using Homebrew:
  - `zsh`
  - `git`
  - `stow`
  - `tmux`
  - `neovim`

### `install/03-oh-my-zsh.sh`
- Installs Oh-My-Zsh for managing Zsh configurations.
- Optionally installs plugins and themes (e.g., `zsh-autosuggestions`, `powerlevel10k`).

### `install/04-dotfiles.sh`
- Clones your dotfiles repository ([menaka-siri/dotfiles](https://github.com/menaka-siri/dotfiles)).
- Uses `stow` to symlink the dotfiles to the appropriate locations.

### `scripts/setup.sh`
- A single entry point to execute all the above scripts in sequence.
- Includes error handling and logging.

### `scripts/helpers.sh`
- Defines reusable functions for logging, error handling, and checking prerequisites.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/wsl-local-setup.git
   cd wsl-local-setup
   ```

2. Run the setup script:
   ```bash
   ./scripts/setup.sh
   ```

3. Follow the on-screen instructions to complete the setup.

## Notes

- Ensure you have WSL installed and configured on your Windows 11 machine.
- The scripts are idempotent and can be safely re-run.

## License

This project is licensed under the MIT License.