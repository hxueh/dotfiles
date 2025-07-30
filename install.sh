#!/usr/bin/env zsh

# Zsh
$(which ln) -sf "$PWD/zsh/zshrc-homebrew.zsh" "$HOME/.zshrc"
$(which ln) -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
$(which ln) -sf "$PWD/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git
$(which ln) -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
$(which ln) -sf "$PWD/git/gitignore_global" "$HOME/.gitignore_global"

# i3
$(which mkdir) -p "$HOME/.config"
$(which ln) -sf "$PWD/i3" "$HOME/.config/i3"
$(which ln) -sf "$PWD/i3status-rust" "$HOME/.config/i3status-rust"

# Neovim
$(which ln) -sf "$PWD/nvim" "$HOME/.config/nvim"

# Python
$(which ln) -sf "$PWD/python/pylintrc" "$HOME/.pylintrc"
$(which ln) -sf "$PWD/python/flake8" "$HOME/.config/flake8"

# gomi
$(which ln) -sf "$PWD/gomi" "$HOME/.config/gomi"
