set number	" let there be line numbers
set incsearch 	" search as characters are entered
set hlsearch	" highlight matches	
set expandtab	" use spaces when I press tab <3
syntax enable	" enable Colors. 


" Move vertically by visual line. 
" Better for Long lines. 
nnoremap j gj 
nnoremap k gk

"Use jk as escape
inoremap jk <esc>

" Finding files
set path+=**    " Search through all sub directories everywhere
set wildmenu    " Display all matching files when tab complete

" Show File name in vim.
autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")

" Clean up when you leave.
autocmd VimLeave * call system("tmux rename-window 'tmux'")

