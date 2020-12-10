" NerdTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeWinSize = 25
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.stignore', '__pycache__[[dir]]', '.vscode[[dir]]', '.git[[dir]]', '\.DS_Store', '.pytest_cache[[dir]]', '.stfolder[[dir]]', '.stversions[[dir]]']
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-beancount
let g:beancount_separator_col = 70
let b:beancount_root = '/home/nathan/Private/Ledger/main.bean'

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" indentLine
let g:indentLine_char_list = ['¦', '┆', '┊']
let g:indentLine_conceallevel = 0

" python-syntax
let g:python_highlight_all = 1

" ack.vim
let g:ackprg = 'ag --vimgrep'

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_type_info = 1
let g:go_addtags_transform = "snakecase"
let g:go_gopls_complete_unimported = 1
let g:go_version_warning = 0

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" fzf
nnoremap <c-p> :call fzf#Open()<cr>

" ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['black'],
    \}
let g:ale_linters = {'python': ['pylint']}

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 2
if has('macunix')
    let g:python3_host_prog = '/usr/local/bin/python3'
else
    let g:python3_host_prog = '/usr/bin/python3'
endif

" vim-mucomplete
set completeopt-=preview
set completeopt+=longest,menuone,noselect
let g:mucomplete#force_manual = 1
let g:mucomplete#enable_auto_at_startup = 1
