#!/usr/bin/env zsh

export {http_proxy,https_proxy}="http://192.168.0.12:7890"

zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Zsh
$(which ln) -sf "$PWD/zsh/zsh-zap" "$HOME/.zshrc"
$(which ln) -sf "$PWD/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git
$(which ln) -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
$(which ln) -sf "$PWD/git/gitignore_global" "$HOME/.gitignore_global"

# i3
$(which mkdir) -p "$HOME/.config"
$(which ln) -sf "$PWD/i3" "$HOME/.config/i3"
$(which ln) -sf "$PWD/i3status-rust" "$HOME/.config/i3status-rust"
$(which ln) -sf "$PWD/nvim" "$HOME/.config/nvim"

# Python
$(which ln) -sf "$PWD/python/pylintrc" "$HOME/.pylintrc"
$(which ln) -sf "$PWD/python/flake8" "$HOME/.config/flake8"
