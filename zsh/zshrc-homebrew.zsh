# First check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
ZSH_AUTOSUGGESTIONS="$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [[ ! -f "$ZSH_AUTOSUGGESTIONS" ]]; then
    brew install zsh-autosuggestions
fi
source "$ZSH_AUTOSUGGESTIONS"

# [powerlevel10k](https://github.com/romkatv/powerlevel10k)
POWERLEVEL10K="$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
if [[ ! -f "$POWERLEVEL10K" ]]; then
    brew install powerlevel10k
fi
source "$POWERLEVEL10K"
source "$HOME/.p10k.zsh"

# [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
ZSH_SYNTAX_HIGHLIGHTING="$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ ! -f "$ZSH_SYNTAX_HIGHLIGHTING" ]]; then
    brew install zsh-syntax-highlighting
fi
source "$ZSH_SYNTAX_HIGHLIGHTING"

# [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
ZSH_HISTORY_SUBSTRING_SEARCH="$HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
if [[ ! -f "$ZSH_HISTORY_SUBSTRING_SEARCH" ]]; then
    brew install zsh-history-substring-search
fi
source "$ZSH_HISTORY_SUBSTRING_SEARCH"

# [zsh-autopair](https://github.com/hlissner/zsh-autopair)
ZSH_AUTOPAIR="$HOMEBREW_PREFIX/share/zsh-autopair/autopair.zsh"
if [[ ! -f "$ZSH_AUTOPAIR" ]]; then
    brew install zsh-autopair
fi
source "$ZSH_AUTOPAIR"

# [zsh-system-clipboard](https://github.com/kutsan/zsh-system-clipboard)
ZSH_SYSTEM_CLIPBOARD="$HOMEBREW_PREFIX/share/zsh-system-clipboard/zsh-system-clipboard.zsh"
if [[ ! -f "$ZSH_SYSTEM_CLIPBOARD" ]]; then
    brew install zsh-system-clipboard
fi
source "$ZSH_SYSTEM_CLIPBOARD"

# [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)
ZSH_VI_MODE="$HOMEBREW_PREFIX/share/zsh-vi-mode/zsh-vi-mode.zsh"
if [[ ! -f "$ZSH_VI_MODE" ]]; then
    brew install zsh-vi-mode
fi
source "$ZSH_VI_MODE"

# [zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
ZSH_GIT_PROMPT="$HOMEBREW_PREFIX/opt/zsh-git-prompt/zshrc.sh"
if [[ ! -f "$ZSH_GIT_PROMPT" ]]; then
    brew install zsh-git-prompt
fi
source $ZSH_GIT_PROMPT

# autoenv
AUTOENV="$HOMEBREW_PREFIX/opt/autoenv/activate.sh"
if [[ ! -f "$AUTOENV" ]]; then
    brew install autoenv
fi
source "$AUTOENV"

# [zsh-completions](https://github.com/zsh-users/zsh-completions)
ZSH_COMPLETIONS_FOLDER="$HOMEBREW_PREFIX/share/zsh-completions"
if [[ ! -d "$ZSH_COMPLETIONS_FOLDER" ]]; then
    brew install zsh-completions
fi
FPATH=$ZSH_COMPLETIONS_FOLDER:$FPATH

# lsd
if [[ ! -f "$HOMEBREW_PREFIX/bin/lsd" ]]; then
    brew install lsd
fi
alias ls="$HOMEBREW_PREFIX/bin/lsd"

# bat
if [[ ! -f "$HOMEBREW_PREFIX/bin/bat" ]]; then
    brew install bat
fi
alias cat="$HOMEBREW_PREFIX/bin/bat"

# dust
if [[ ! -f "$HOMEBREW_PREFIX/bin/dust" ]]; then
    brew install dust
fi
alias du="$HOMEBREW_PREFIX/bin/dust"

# htop
if [[ ! -f "$HOMEBREW_PREFIX/bin/htop" ]]; then
    brew install htop
fi
alias top="$HOMEBREW_PREFIX/bin/htop"

# fd
if [[ ! -f "$HOMEBREW_PREFIX/bin/fd" ]]; then
    brew install fd
fi
alias find="$HOMEBREW_PREFIX/bin/fd"

# ripgrep
if [[ ! -f "$HOMEBREW_PREFIX/bin/rg" ]]; then
    brew install ripgrep
fi
alias grep="$HOMEBREW_PREFIX/bin/rg"

# helix
if [[ ! -f "$HOMEBREW_PREFIX/bin/hx" ]]; then
    brew install evil-helix
fi
alias vim="$HOMEBREW_PREFIX/bin/hx"

# tldr
if [[ ! -f "$HOMEBREW_PREFIX/bin/tldr" ]]; then
    brew install tldr
fi
alias man="$HOMEBREW_PREFIX/bin/tldr"

# sd
if [[ ! -f "$HOMEBREW_PREFIX/bin/sd" ]]; then
    brew install sd
fi
alias sed="$HOMEBREW_PREFIX/bin/sd"

autoload -Uz compinit
compinit
