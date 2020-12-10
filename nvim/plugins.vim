" Automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin('$HOME/.vim/plugged')

" Defaults everyone can agree on
Plug 'tpope/vim-sensible'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-eunuch'

" Combine with netrw to create a delicious salad dressing
Plug 'tpope/vim-vinegar'

" Displaying thin vertical lines at each indentation level for code indented with spaces
Plug 'Yggdroot/indentLine'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv'

" Vim ftplugin for beancount
Plug 'nathangrigg/vim-beancount'

" Go development plugin for Vim
Plug 'fatih/vim-go'

" Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'

" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" Improved nginx vim plugin
Plug 'chr4/nginx.vim'

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim Buffer
Plug 'qpkorr/vim-bufkill'

" Fzf
Plug 'lvht/fzf'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Python syntax highlighting for Vim
Plug 'vim-python/python-syntax'

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'

" Chained completion that works the way you want!
Plug 'lifepillar/vim-mucomplete'

" Using the jedi autocompletion library for VIM.
Plug 'davidhalter/jedi-vim'

" Vim plugin that use clang for completing C/C++ code.
Plug 'xavierd/clang_complete'

" A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
Plug 'elzr/vim-json'

call plug#end()
