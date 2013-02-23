runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
"Begin My Settings-

set filetype=on
filetype plugin indent on
colorscheme molokai

set guioptions-=m "remove menu gvim
set guioptions-=T "remove toolbar gvim
set number
set expandtab
"set smartindent
set tabpagemax=100
set showmatch

"default spacings
set ai "autoindent
set sw=4
set ts=4

"Python annoying tab fix
let g:pyindent_open_paren = '&sw'

"Java/JS
au FileType java set sw=2
au FileType java set ts=2
au FileType javascript set sw=2
au FileType javascript set ts=2
"HTML
au FileType html set sw=2
au FileType html set ts=2
"ruby
au FileType ruby set sw=2
au FileType ruby set ts=2
au FileType eruby set sw=2
au FileType eruby set ts=2
"CSS
au FileType css set sw=2
au FileType css set ts=2

" Store swap files in fixed location, not in the current directory.
set dir=~/.vimswap//,var/tmp//,/tmp//,.
set undodir=~/.vimundo//,var/tmp//,/tmp//,.
set backupdir=~/.vimbackup//,var/tmp//,tmp//,.

set t_Co=256

map <C-l> :tabnext<CR>
map <C-h> :tabprev<CR>

command W w
command Wa wa
command Wq wq
command Wqa wqa

au BufRead,BufNewFile *.md set filetype=markdown
