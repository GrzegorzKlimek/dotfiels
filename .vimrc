call plug#begin()
Plug 'https://github.com/cormacrelf/vim-colors-github'
call plug#end()
set syntax=on
set number
set shiftwidth=2
set softtabstop=2
set relativenumber
set nowrap
set noswapfile
set nohlsearch
set path+=/work
set incsearch
set lazyredraw

let mapleader =" "
set guioptions -=T
set guioptions -=m 
set termguicolors
colorscheme default

" easier copying to cliboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p
inoremap <C-V> <C-R>+
noremap <leader>p "0p 
vnoremap <leader>p "0p 

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"disable big S
nnoremap S $

" move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv
vnoremap <leader>l <gv
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

" manipulate words and parenthesis
nnoremap cw ciw
nnoremap cW ciW
nnoremap vw viw
nnoremap vW viW
nnoremap yw yiw
nnoremap yW yiW
nnoremap dw diw
nnoremap dW diW
nnoremap v" vi"
nnoremap d" di"
nnoremap c" ci"
nnoremap y" yi"
nnoremap v' vi'
nnoremap d' di'
nnoremap c' ci'
nnoremap y' yi'

"  some custom remaps with leader key
nnoremap <leader>i :echo @% <CR>
nnoremap <leader>r :e! <CR>
nnoremap <leader>t :tabnew<Esc>
nnoremap <leader>q :q<Esc>
nnoremap <leader><space> a<space><Esc>h

