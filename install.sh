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

# Starship
ln -sf "$PWD/starship/starship.toml" "$HOME/.config/starship.toml"

# Git
ln -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/git/gitignore" "$HOME/.gitignore_global"

# gomi
rm -rf "$HOME/.config/gomi"
ln -sf "$PWD/gomi" "$HOME/.config/gomi"

# Ghostty
rm -rf "$HOME/.config/ghostty"
ln -sf "$PWD/ghostty" "$HOME/.config/ghostty"

# Cursor
mkdir -p "$HOME/Library/Application Support/Cursor/User"
ln -sf "$PWD/cursor/settings.json" "$HOME/Library/Application Support/Cursor/User/settings.json"
ln -sf "$PWD/cursor/keybindings.json" "$HOME/Library/Application Support/Cursor/User/keybindings.json"
rm -rf "$HOME/Library/Application Support/Cursor/User/snippets"
ln -sf "$PWD/cursor/snippets" "$HOME/Library/Application Support/Cursor/User/snippets"

# Neovim
rm -rf "$HOME/.config/nvim"
ln -sf "$PWD/nvim" "$HOME/.config/nvim"

# Prettier
ln -sf "$PWD/prettier/prettierrc.json" "$HOME/.prettierrc"

# WakaTime
ln -sf "$PWD/wakatime/wakatime.cfg" "$HOME/.wakatime.cfg"

# GnuPG
mkdir -p "$HOME/.gnupg"
ln -sf "$PWD/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"

# Claude Code
mkdir -p "$HOME/.claude"
ln -sf "$PWD/claude/settings.json" "$HOME/.claude/settings.json"
ln -sf "$PWD/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
ln -sf "$PWD/claude/agents" "$HOME/.claude/agents"
ln -sf "$PWD/claude/statusline.sh" "$HOME/.claude/statusline.sh"

# Gemini
mkdir -p "$HOME/.gemini"
ln -sf "$PWD/gemini/settings.json" "$HOME/.gemini/settings.json"

# Codex
mkdir -p "$HOME/.config/codex"
ln -sf "$PWD/codex/config.toml" "$HOME/.config/codex/config.toml"
