# Skip loading in Claude Code or Cursor Agent
if [[ -n "$CLAUDECODE" || -n "$CURSOR_AGENT" ]]; then
    return
fi

# First check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh)"
fi

# [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
ZSH_AUTOSUGGESTIONS="$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [[ ! -f "$ZSH_AUTOSUGGESTIONS" ]]; then
    brew install -q zsh-autosuggestions
fi
source "$ZSH_AUTOSUGGESTIONS"

# [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
ZSH_HISTORY_SUBSTRING_SEARCH="$HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
if [[ ! -f "$ZSH_HISTORY_SUBSTRING_SEARCH" ]]; then
    brew install -q zsh-history-substring-search
fi
source "$ZSH_HISTORY_SUBSTRING_SEARCH"

# [zsh-autopair](https://github.com/hlissner/zsh-autopair)
ZSH_AUTOPAIR="$HOMEBREW_PREFIX/share/zsh-autopair/autopair.zsh"
if [[ ! -f "$ZSH_AUTOPAIR" ]]; then
    brew install -q zsh-autopair
fi
source "$ZSH_AUTOPAIR"

# [zsh-system-clipboard](https://github.com/kutsan/zsh-system-clipboard)
ZSH_SYSTEM_CLIPBOARD="$HOMEBREW_PREFIX/share/zsh-system-clipboard/zsh-system-clipboard.zsh"
if [[ ! -f "$ZSH_SYSTEM_CLIPBOARD" ]]; then
    brew install -q zsh-system-clipboard
fi
source "$ZSH_SYSTEM_CLIPBOARD"

# [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)
ZSH_VI_MODE="$HOMEBREW_PREFIX/share/zsh-vi-mode/zsh-vi-mode.zsh"
if [[ ! -f "$ZSH_VI_MODE" ]]; then
    brew install -q zsh-vi-mode
fi
source "$ZSH_VI_MODE"

# [zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
ZSH_GIT_PROMPT="$HOMEBREW_PREFIX/opt/zsh-git-prompt/zshrc.sh"
if [[ ! -f "$ZSH_GIT_PROMPT" ]]; then
    brew install -q zsh-git-prompt
fi
source $ZSH_GIT_PROMPT

# starship - only load if not using WarpTerminal
if [[ "$TERM_PROGRAM" != "WarpTerminal" ]]; then
    if [[ ! -f "$HOMEBREW_PREFIX/bin/starship" ]]; then
        brew install -q starship
    fi
    eval "$(starship init zsh)"
fi

# autoenv
AUTOENV="$HOMEBREW_PREFIX/opt/autoenv/activate.sh"
if [[ ! -f "$AUTOENV" ]]; then
    brew install -q autoenv
fi
source "$AUTOENV"

# [F-Sy-H](https://github.com/z-shell/F-Sy-H)
ZSH_F_SY_H="$HOMEBREW_PREFIX/share/zsh-f-sy-h/F-Sy-H.plugin.zsh"
if [[ ! -f "$ZSH_F_SY_H" ]]; then
    brew install -q zsh-f-sy-h
fi
source "$ZSH_F_SY_H"

# [zsh-completions](https://github.com/zsh-users/zsh-completions)
ZSH_COMPLETIONS_FOLDER="$HOMEBREW_PREFIX/share/zsh-completions"
if [[ ! -d "$ZSH_COMPLETIONS_FOLDER" ]]; then
    brew install -q zsh-completions
fi

# zoxide
if [[ ! -f "$HOMEBREW_PREFIX/bin/zoxide" ]]; then
    brew install -q zoxide
fi
eval "$($HOMEBREW_PREFIX/bin/zoxide init zsh --cmd cd)"

# eza
if [[ ! -f "$HOMEBREW_PREFIX/bin/eza" ]]; then
    brew install -q eza
fi
alias ls="$HOMEBREW_PREFIX/bin/eza"
export EZA_ICONS_AUTO="1"

# bat
if [[ ! -f "$HOMEBREW_PREFIX/bin/bat" ]]; then
    brew install -q bat
fi
alias cat="$HOMEBREW_PREFIX/bin/bat -pp"

# dust
if [[ ! -f "$HOMEBREW_PREFIX/bin/dust" ]]; then
    brew install -q dust
fi
alias du="$HOMEBREW_PREFIX/bin/dust"

# btop
if [[ ! -f "$HOMEBREW_PREFIX/bin/btop" ]]; then
    brew install -q btop
fi
alias top="$HOMEBREW_PREFIX/bin/btop"

# fd
if [[ ! -f "$HOMEBREW_PREFIX/bin/fd" ]]; then
    brew install -q fd
fi
alias find="$HOMEBREW_PREFIX/bin/fd"

# ripgrep
if [[ ! -f "$HOMEBREW_PREFIX/bin/rg" ]]; then
    brew install -q ripgrep
fi
alias grep="$HOMEBREW_PREFIX/bin/rg"

# neovim
if [[ ! -f "$HOMEBREW_PREFIX/bin/nvim" ]]; then
    brew install -q neovim
fi
alias vim="$HOMEBREW_PREFIX/bin/nvim"

# tldr
if [[ ! -f "$HOMEBREW_PREFIX/bin/tldr" ]]; then
    brew install -q tlrc
fi
alias man="$HOMEBREW_PREFIX/bin/tldr"

# curlie
if [[ ! -f "$HOMEBREW_PREFIX/bin/curlie" ]]; then
    brew install -q curlie
fi
alias curl="$HOMEBREW_PREFIX/bin/curlie"

# wget2
if [[ ! -f "$HOMEBREW_PREFIX/bin/wget2" ]]; then
    brew install -q wget2
fi
alias wget="$HOMEBREW_PREFIX/bin/wget2"

# procs
if [[ ! -f "$HOMEBREW_PREFIX/bin/procs" ]]; then
    brew install -q procs
fi
alias ps="$HOMEBREW_PREFIX/bin/procs"

# gomi
if [[ ! -f "$HOMEBREW_PREFIX/bin/gomi" ]]; then
    brew install -q gomi
fi
alias rm="$HOMEBREW_PREFIX/bin/gomi"

# gping
if [[ ! -f "$HOMEBREW_PREFIX/bin/gping" ]]; then
    brew install -q gping
fi
alias ping="$HOMEBREW_PREFIX/bin/gping"

# mycli
if [[ ! -f "$HOMEBREW_PREFIX/bin/mycli" ]]; then
    brew install -q mycli
fi
alias mysql="$HOMEBREW_PREFIX/bin/mycli"

# pgcli
if [[ ! -f "$HOMEBREW_PREFIX/bin/pgcli" ]]; then
    brew install -q pgcli
fi
alias psql="$HOMEBREW_PREFIX/bin/pgcli"

# iredis
if [[ ! -f "$HOMEBREW_PREFIX/bin/iredis" ]]; then
    brew install -q iredis
fi
alias redis="$HOMEBREW_PREFIX/bin/iredis"

# delta
if [[ ! -f "$HOMEBREW_PREFIX/bin/delta" ]]; then
    brew install -q delta
fi

export FPATH="$ZSH_COMPLETIONS_FOLDER:${FPATH}"
autoload -Uz compinit
compinit

# Zsh config
# History
mkdir -p "$HOME/.local/share/zsh"
export HISTFILE="$HOME/.local/share/zsh/history"
export HISTSIZE=100000
export SAVEHIST=100000
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
