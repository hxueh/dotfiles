# First check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# Get the Homebrew prefix dynamically
BREW_PREFIX=$(brew --prefix)

# zsh-autosuggestions
ZSH_AUTOSUGGESTIONS="$BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [[ ! -f "$ZSH_AUTOSUGGESTIONS" ]]; then
    brew install zsh-autosuggestions
fi
source "$ZSH_AUTOSUGGESTIONS"

# powerlevel10k
POWERLEVEL10K="$BREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
if [[ ! -f "$POWERLEVEL10K" ]]; then
    brew install powerlevel10k
fi
source "$POWERLEVEL10K"
source "$HOME/.p10k.zsh"

# zsh-syntax-highlighting
ZSH_SYNTAX_HIGHLIGHTING="$BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ ! -f "$ZSH_SYNTAX_HIGHLIGHTING" ]]; then
    brew install zsh-syntax-highlighting
fi
source "$ZSH_SYNTAX_HIGHLIGHTING"

# zsh-history-substring-search
ZSH_HISTORY_SUBSTRING_SEARCH="$BREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
if [[ ! -f "$ZSH_HISTORY_SUBSTRING_SEARCH" ]]; then
    brew install zsh-history-substring-search
fi
source "$ZSH_HISTORY_SUBSTRING_SEARCH"

# zsh-autopair
ZSH_AUTOPAIR="$BREW_PREFIX/share/zsh-autopair/autopair.zsh"
if [[ ! -f "$ZSH_AUTOPAIR" ]]; then
    brew install zsh-autopair
fi
source "$ZSH_AUTOPAIR"

# zsh-system-clipboard
ZSH_SYSTEM_CLIPBOARD="$BREW_PREFIX/share/zsh-system-clipboard/zsh-system-clipboard.zsh"
if [[ ! -f "$ZSH_SYSTEM_CLIPBOARD" ]]; then
    brew install zsh-system-clipboard
fi
source "$ZSH_SYSTEM_CLIPBOARD"

# zsh-vi-mode
ZSH_VI_MODE="$BREW_PREFIX/share/zsh-vi-mode/zsh-vi-mode.zsh"
if [[ ! -f "$ZSH_VI_MODE" ]]; then
    brew install zsh-vi-mode
fi
source "$ZSH_VI_MODE"

# autoenv
AUTOENV="$BREW_PREFIX/opt/autoenv/activate.sh"
if [[ ! -f "$AUTOENV" ]]; then
    brew install autoenv
fi
source "$AUTOENV"
