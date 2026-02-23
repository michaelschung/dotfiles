#!/usr/bin/env bash
set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

info() { echo -e "${GREEN}[✓]${NC} $1"; }
warn() { echo -e "${YELLOW}[!]${NC} $1"; }

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# --- Homebrew ---
if ! command -v brew &>/dev/null; then
    info "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    info "Homebrew already installed."
fi

# --- GNU Stow ---
if ! command -v stow &>/dev/null; then
    info "Installing GNU Stow..."
    brew install stow
else
    info "GNU Stow already installed."
fi

# --- Zsh plugins & tools ---
info "Installing Homebrew packages..."
brew install zsh-syntax-highlighting zsh-autosuggestions bat 2>/dev/null || true

# --- Oh My Zsh ---
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    info "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    info "Oh My Zsh already installed."
fi

# --- Stow dotfiles ---
info "Linking dotfiles with GNU Stow..."
cd "$DOTFILES_DIR"
make

info "Done! Restart your shell or run: source ~/.zshrc"
