#!/usr/bin/env sh

# Install Homebrew
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# Create config folder
$(which mkdir) -p "$HOME/.config"

# Zsh
$(which ln) -sf "$PWD/zsh/zshrc-homebrew.zsh" "$HOME/.zshrc"
$(which ln) -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
$(which ln) -sf "$PWD/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git
$(which ln) -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
$(which ln) -sf "$PWD/git/gitignore" "$HOME/.gitignore_global"

# Neovim
$(which rm) -rf "$HOME/.config/nvim"
$(which ln) -sf "$PWD/nvim" "$HOME/.config/nvim"

# gomi
$(which rm) -rf "$HOME/.config/gomi"
$(which ln) -sf "$PWD/gomi" "$HOME/.config/gomi"

# Cursor
$(which mkdir) -p "$HOME/Library/Application Support/Cursor/User"
$(which ln) -sf "$PWD/cursor/settings.json" "$HOME/Library/Application Support/Cursor/User/settings.json"
$(which ln) -sf "$PWD/cursor/keybindings.json" "$HOME/Library/Application Support/Cursor/User/keybindings.json"
$(which rm) -rf "$HOME/Library/Application Support/Cursor/User/snippets"
$(which ln) -sf "$PWD/cursor/snippets" "$HOME/Library/Application Support/Cursor/User/snippets"

# WakaTime
$(which ln) -sf "$PWD/wakatime/wakatime.cfg" "$HOME/.wakatime.cfg"

# GnuPG
$(which mkdir) -p "$HOME/.gnupg"
$(which ln) -sf "$PWD/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"

# Claude Code
$(which mkdir) -p "$HOME/.claude"
$(which ln) -sf "$PWD/claude/settings.json" "$HOME/.claude/settings.json"
$(which ln) -sf "$PWD/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
