"Start pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on
colorscheme molokai

set number " Show line numbers
set tabpagemax=100 "Tabpages
set showmatch " Highlight matching close symbol
set ai "autoindent
set laststatus=2
set backspace=2

set list
set listchars=tab:▸\ ,eol:¬

"Python annoying tab fix
let g:pyindent_open_paren = '&sw'

" default tabstop
set ts=2
set sw=2
" set et

"" python
"au FileType python set sw=4
"au FileType python set sts=4
"au FileType python set ts=4
""Java
"au FileType java set sw=2
"au FileType java set sts=2
"au FileType java set ts=2
""Javascript
"au FileType javascript set sw=2
"au FileType javascript set sts=2
"au FileType javascript set ts=2
""HTML
"au FileType html set sw=2
"au FileType html set sts=2
"au FileType html set ts=2
""ruby
"au FileType ruby set sw=2
"au FileType ruby set sts=2
"au FileType ruby set ts=2
"au FileType eruby set sw=2
"au FileType eruby set sts=2
"au FileType eruby set ts=2
""CSS
"au FileType css set sw=2
"au FileType css set sts=2
"au FileType css set ts=2
""Golang
"au FileType go set sw=4
"au FileType go set sts=4
"au FileType go set ts=4
"au FileType go set noet

" Store swap files in fixed location, not in the current directory.
" The commas delimit heiarchy.
" set dir=~/.vimswap//,var/tmp//,/tmp//,.
" set undodir=~/.vimundo//,var/tmp//,/tmp//,.
" set backupdir=~/.vimbackup//,var/tmp//,tmp//,.

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
