#!/usr/bin/env sh

# Install Homebrew
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# Create config folder
mkdir -p "$HOME/.config"

# Zsh
ln -sf "$PWD/zsh/zshrc-homebrew.zsh" "$HOME/.zshrc"
ln -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$PWD/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git
ln -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/git/gitignore" "$HOME/.gitignore_global"

# Neovim
rm -rf "$HOME/.config/nvim"
ln -sf "$PWD/nvim" "$HOME/.config/nvim"

# gomi
rm -rf "$HOME/.config/gomi"
ln -sf "$PWD/gomi" "$HOME/.config/gomi"

# Cursor
mkdir -p "$HOME/Library/Application Support/Cursor/User"
ln -sf "$PWD/cursor/settings.json" "$HOME/Library/Application Support/Cursor/User/settings.json"
ln -sf "$PWD/cursor/keybindings.json" "$HOME/Library/Application Support/Cursor/User/keybindings.json"
rm -rf "$HOME/Library/Application Support/Cursor/User/snippets"
ln -sf "$PWD/cursor/snippets" "$HOME/Library/Application Support/Cursor/User/snippets"

# WakaTime
ln -sf "$PWD/wakatime/wakatime.cfg" "$HOME/.wakatime.cfg"

# GnuPG
mkdir -p "$HOME/.gnupg"
ln -sf "$PWD/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"

# Claude Code
mkdir -p "$HOME/.claude"
ln -sf "$PWD/claude/settings.json" "$HOME/.claude/settings.json"
ln -sf "$PWD/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"

# Gemini
mkdir -p "$HOME/.gemini"
ln -sf "$PWD/gemini/settings.json" "$HOME/.gemini/settings.json"
