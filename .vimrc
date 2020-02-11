"toggle line number
set number 
"toggle 256 colors
set t_Co=256
"set background to dark
set background=dark
"toggle Syntax Highlighting
:syntax on
"Vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"begin plug call
call plug#begin('~/.vim/plugged')
"list plugins
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "bunch of colorschemes
"Plug 'https://github.com/Valloric/YouCompleteMe' "auto complete
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/terryma/vim-multiple-cursors'
"end plug call
call plug#end()
"Change Color
colorscheme minimalist 
set tabstop=4 "tabs count for 4 spaces
set softtabstop=4 "tabs count for 4 spaces while editing
set expandtab "tabs are now spaces
set showcmd "show last command entered
set cursorline "highlight current line
set wildmenu "viaual autocomplete for command menu
set showmatch "highlights brackets
autocmd vimenter * NERDTree "open NerdTree on start up

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

"choose color depending on file extension
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('java', 'green', 'none', '#00fa9a', '#151515')
call NERDTreeHighlightFile('cs', 'Blue', 'none', '#00adff', '#151515')
call NERDTreeHighlightFile('d', 'LightRed', 'none', '#ff69b4', '#151515')
call NERDTreeHighlightFile('py', 'Red', 'none', '#ffa700', '#151515')
call NERDTreeHighlightFile('meta', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('csproj', 'Blue', 'none', '#1cb9f2', '#151515')
call NERDTreeHighlightFile('sln', 'Yellow', 'none', '#ffff00', '#151515')


