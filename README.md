# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Quick start

On a fresh Mac, clone and run the setup script:

```bash
git clone git@github.com:michaelschung/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

This installs all prerequisites (Homebrew, Stow, Oh My Zsh, zsh plugins, bat) and symlinks everything into `$HOME`.

## What's included

| Directory | Files | Description |
|-----------|-------|-------------|
| `bash/`   | `.bash_profile` | Bash profile (sets `ZSH_CUSTOM`) |
| `git/`    | `.gitconfig`, `.gitignore_global` | Git aliases, pretty log formats, global ignores |
| `vim/`    | `.vimrc` | Vim config (line numbers, smart search, arrow key blocking) |
| `zsh/`    | `.zprofile`, `.zshrc`, `aliases.zsh` | Zsh config with Oh My Zsh, syntax highlighting, autosuggestions |

## Manual usage

If you already have the prerequisites installed:

```bash
# Create symlinks
make

# Remove symlinks
make delete
```

## Prerequisites

Installed automatically by `setup.sh`, but for reference:

- [Homebrew](https://brew.sh)
- [GNU Stow](https://www.gnu.org/software/stow/) (`brew install stow`)
- [Oh My Zsh](https://ohmyz.sh)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) (`brew install zsh-syntax-highlighting`)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (`brew install zsh-autosuggestions`)
- [bat](https://github.com/sharkdp/bat) (`brew install bat`) — used as `cat` replacement

## Machine-specific config

For settings that shouldn't be committed (work email, project aliases for a specific machine, etc.), create `~/.zshrc.local`. It's automatically sourced at the end of `.zshrc`.

```bash
# Example ~/.zshrc.local
export WORK_EMAIL="me@company.com"
alias myproject="cd ~/work/myproject"
```

## Adding new dotfiles

1. Create a new directory (e.g., `tmux/`)
2. Put the dotfile inside it with the same name it should have in `$HOME` (e.g., `tmux/.tmux.conf`)
3. Run `make` — Stow will create the symlink automatically
