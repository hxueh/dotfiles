#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# Install Homebrew
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# Ensure GNU Stow is available
if ! command -v stow >/dev/null 2>&1; then
  brew install stow
fi

# Create prerequisite directories
mkdir -p "$HOME/.config"
mkdir -p "$HOME/Library/Application Support"

stow_package() {
  package=$1
  target=$2

  printf 'Stowing %s -> %s\n' "$package" "$target"
  if ! stow --target="$target" --restow "$package"; then
    printf 'Failed to stow %s\n' "$package" >&2
    exit 1
  fi
}

HOME_PACKAGES="zsh git prettier wakatime gnupg claude gemini starship gomi ghostty nvim codex cursor"

for package in $HOME_PACKAGES; do
  stow_package "$package" "$HOME"
done
