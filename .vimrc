set nocompatible			" dont act like vi
colo ron				" set colorscheme
syntax enable				" enable colors
filetype plugin on			" Not sure about this....


set number 				" Line Numbers
set incsearch 				" Search as characters are entered.
set hlsearch				" highlight matches
nnoremap <esc> :noh<return><esc>	" Removes Highlight with esc

" Move vertically by visual line. 
" Better for long lines. 
nnoremap j gj
nnoremap k gk

" Use jk as escape
inoremap jk <esc>

" Finding Files
set path+=**				" Search through all sub directories everywhere
set wildmenu 				" Display all matching files when tab complete

