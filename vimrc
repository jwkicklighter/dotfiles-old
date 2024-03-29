"syntax :on
"
color desert
set autoindent
set number
set tabstop=3
set sw=3
set gfn=Droid\ Sans\ Mono:h14
filetype indent plugin on
"
set incsearch
set ignorecase
set smartcase
set scrolloff=2
"
" Map Buttons for Tab Control
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>i
map <C-w> :tabclose<cr>
"
imap hh <ESC>
"
" Plugins
if filereadable('.vim/autoclose.vim')
	source ~/.vim/autoclose.vim
elseif filereadable('_vim/autoclose.vim')
	source ~/_vim/autoclose.vim
endif
