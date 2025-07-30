#!/usr/bin/env zsh

# Create config folder
$(which mkdir) -p "$HOME/.config"

# Homebrew
$(which rm) -rf "$HOME/.config/homebrew"
$(which ln) -sf "$PWD/homebrew" "$HOME/.config/homebrew"

# Zsh
$(which ln) -sf "$PWD/zsh/zshrc-homebrew.zsh" "$HOME/.zshrc"
$(which ln) -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
$(which ln) -sf "$PWD/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git
$(which ln) -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
$(which ln) -sf "$PWD/git/gitignore_global" "$HOME/.gitignore_global"

# i3
$(which rm) -rf "$HOME/.config/i3"
$(which ln) -sf "$PWD/i3" "$HOME/.config/i3"
$(which rm) -rf "$HOME/.config/i3status-rust"
$(which ln) -sf "$PWD/i3status-rust" "$HOME/.config/i3status-rust"

# Neovim
$(which rm) -rf "$HOME/.config/nvim"
$(which ln) -sf "$PWD/nvim" "$HOME/.config/nvim"

# Python
$(which ln) -sf "$PWD/python/pylintrc" "$HOME/.pylintrc"
$(which ln) -sf "$PWD/python/flake8" "$HOME/.config/flake8"

# gomi
$(which rm) -rf "$HOME/.config/gomi"
$(which ln) -sf "$PWD/gomi" "$HOME/.config/gomi"

# Cursor
$(which ln) -sf "$PWD/cursor/settings.json" "$HOME/Library/Application Support/Cursor/User/settings.json"
$(which ln) -sf "$PWD/cursor/keybindings.json" "$HOME/Library/Application Support/Cursor/User/keybindings.json"
$(which rm) -rf "$HOME/Library/Application Support/Cursor/User/snippets"
$(which ln) -sf "$PWD/cursor/snippets" "$HOME/Library/Application Support/Cursor/User/snippets"
