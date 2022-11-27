"Start pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
colorscheme molokai

set number " Show line numbers
set relativenumber " Show line numbers
set tabpagemax=100 "Tabpages
set showmatch " Highlight matching close symbol
set ai "autoindent
set laststatus=2
set backspace=2

set list
set listchars=tab:▸\ ,eol:¬

"Python annoying tab fix
let g:pyindent_open_paren = '&sw'

set guicursor=a:blinkon1

" default tabstop
set ts=2
set sw=2
set t_Co=256

map <C-l> :tabnext<CR>
map <C-h> :tabprev<CR>

command W w
command Wa wa
command Wq wq
command Wqa wqa

au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile *.sls set filetype=yaml
au BufRead,BufNewFile *.sls set ts=2
au BufRead,BufNewFile *.sls set sw=2
" au BufRead,BufNewFile *.sls set et
au BufRead,BufNewFile master.cfg set filetype=python

" Ctrl-P plugin include hidden files in fuzzy search
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_show_hidden=1
let g:ctrlp_max_files=100000
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(hg|svn|git|hglf)|vendor|node_modules)$',
  \ 'file': '\v\.(pyc|swp|o|so|orig)$',
  \ }


" Vimcasts ep. 4 remove trailing spaces
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
au BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_fmt_command = "golines"
let g:go_addtags_transform = "camelcase"
let g:go_fmt_options = {
    \ 'golines': '-m 128',
    \ }
let g:terraform_fmt_on_save = 1

hi QuickFixLine NONE
