#!/usr/bin/env zsh

export {http_proxy,https_proxy}="http://127.0.0.1:7890"

$(which sh) -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --skip-chsh --unattended

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

$(which git) clone "https://github.com/zsh-users/zsh-completions" "$ZSH_CUSTOM/plugins/zsh-completions"
$(which git) clone "https://github.com/zsh-users/zsh-history-substring-search" "$ZSH_CUSTOM/plugins/zsh-history-substring-search"
$(which git) clone "https://github.com/zsh-users/zsh-autosuggestions" "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
$(which git) clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
$(which git) clone --depth=1 "https://github.com/romkatv/powerlevel10k.git" "$ZSH_CUSTOM/themes/powerlevel10k"

# Zsh
$(which ln) -sf "$PWD/zsh/zshrc" "$HOME/.zshrc"
$(which ln) -sf "$PWD/zsh/zshenv" "$HOME/.zshenv"
$(which ln) -sf "$PWD/zsh/p10k" "$HOME/.p10k"

# Git
$(which ln) -sf "$PWD/git/gitconfig" "$HOME/.gitconfig"
$(which ln) -sf "$PWD/git/gitignore_global" "$HOME/.gitignore_global"

# i3
$(which mkdir) -p "$HOME/.config"
$(which ln) -sf "$PWD/i3" "$HOME/.config/i3"
$(which ln) -sf "$PWD/nvim" "$HOME/.config/nvim"

# Python
$(which ln) -sf "$PWD/python/pylintrc" "$HOME/.pylintrc"
$(which ln) -sf "$PWD/python/flake8" "$HOME/.config/flake8"
