" Plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/pluggs')
	Plug 'scrooloose/nerdtree'

	Plug 'skywind3000/asyncrun.vim' 

	Plug 'https://github.com/pangloss/vim-javascript'

	Plug 'mattn/emmet-vim'

	" Theme 
	Plug 'dracula/vim', { 'as': 'dracula' }

	Plug 'itchyny/lightline.vim'
call plug#end()

" Color Scheme
syntax on
color dracula
set termguicolors

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {'colorscheme': 'powerline',}

" Key mappings
map <C-n> :NERDTreeToggle<CR>

" Split navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Cygwin (aka Windows cursors)
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Setup
set number
set nu
set numberwidth=4
copen

" Indentation
filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
