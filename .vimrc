" Stop no-indent on python comment lines!
inoremap # X#
set nocompatible
syntax on
let PHP_autoformatcomment = 0
let g:netrw_keepdir=0
let g:netrw_browse_split=2
filetype plugin indent on
set smartindent
set backspace=indent,eol,start
set foldmethod=marker
set ruler
set history=200
set ts=4
set sts=4
set sw=4
set expandtab

"To have the numeric keypad working with putty / vim
:imap <Esc>Oq 1
:imap <Esc>Or 2
:imap <Esc>Os 3
:imap <Esc>Ot 4
:imap <Esc>Ou 5
:imap <Esc>Ov 6
:imap <Esc>Ow 7
:imap <Esc>Ox 8
:imap <Esc>Oy 9
:imap <Esc>Op 0
:imap <Esc>On .
:imap <Esc>OQ /
:imap <Esc>OR *
:imap <Esc>Ol +
:imap <Esc>OS -

" Tab mappings

:map Oc :tabnext<CR>
:map Od :tabprevious<CR>
:map O5C :tabnext<CR>
:map O5D :tabprevious<CR>
":map [C :tabnext<CR>
":map [D :tabprevious<CR>
:map [1;5C :tabnext<CR>
:map [1;5D :tabprevious<CR>
:map [D :tabprevious<CR>
:map [C :tabnext<CR>
:map [5D :tabprevious<CR>
:map [5C :tabnext<CR>

:set tabpagemax=50

" Die screen die
"
:map  

" Completion settings

:imap  
:imap  </

" Personal settings

:set nohlsearch

" UBER backup

":set backup
":let s:backup_root_dir=expand("~/backups/files")
":let s:dir=expand("%:p:h")
":let s:backup_dir = s:backup_root_dir.s:dir
""--make directory under DRIVE if it doesn't exist
"if filewritable(s:backup_dir)==0
"	sil exe expand("!mkdir -p ".s:backup_dir)
"endif
""--set new backup dir
":let &backupdir=s:backup_dir
""exe expand("set backupdir=".s:backup_dir)
"set verbose=0
"au BufWritePost * exe "silent !cp -- <afile> " . s:backup_dir . "/" . expand("<afile>:t") . " 2> /dev/null"
"au BufWritePost * if getline(1) =~ "^#!" || getline(1) =~ "/bin/" | silent !chmod a+x <afile>

:set nofsync sws=

"  move text and rehighlight -- vim tip_id=224
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" http://vim.wikia.com/wiki/Su-write
command W w !sudo tee % > /dev/null

command G w !sudo chgrp tpjsites `dirname %` && sudo chmod g+w `dirname %`

highlight SpellBad term=reverse ctermbg=7

" PHP Doc plugin
" inoremap <C-D> <ESC>:call PhpDocSingle()<CR>i
" nnoremap <C-D> :call PhpDocSingle()<CR>
" vnoremap <C-D> :call PhpDocRange()<CR>

" Wrap smarty translation tags
vmap st c{!"<c-r>""\|_}<esc>

" The Mac .vimrc sets modelines=0 for CVE-2007-2438
set modelines=5

" Home/End for Mac
:imap <C-a> <Home>
:imap <C-e> <End>

" Alt+leftarrow will go one window left, etc.
nmap <silent> b :wincmd h<CR>
nmap <silent> f :wincmd l<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Pathogen entry point
execute pathogen#infect()

set cursorline
