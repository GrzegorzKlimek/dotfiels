call plug#begin("~/.local/share/nvim/plugged")

Plug 'preservim/nerdtree'
Plug 'gioele/vim-autoswap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'iamcco/coc-angular'
Plug 'burnettk/vim-angular'
Plug 'chiel92/vim-autoformat'
Plug 'w0ng/vim-hybrid'
Plug 'uiiaoo/java-syntax.vim'
Plug 'xolox/vim-misc'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mkitt/tabline.vim'
Plug 'itchyny/lightline.vim'                       
Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
Plug 'ryanoasis/vim-devicons'
Plug 'netsgnut/arctheme.vim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'voldikss/vim-floaterm'
Plug 'easymotion/vim-easymotion'


call plug#end()

let mapleader =","


autocmd vimenter * colorscheme gruvbox
set background=dark

syntax enable
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set relativenumber
set ruler
set nowrap
set noswapfile
set nohlsearch
set smartindent
set autoread
let g:coc_disable_startup_warning = 1
set t_Co=256                    " Set if term supports 256 colors.
set guitablabel=%N\ %f
set mouse=a
set autoread
set path+=/work
set scrolloff=999

" move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nmap <C-n> :NERDTreeMirror<CR>
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-p> :Files<CR>
nmap <C-f> :Autoformat<CR>
nmap <F5> :e!<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> :
tnoremap <Esc> <C-\><C-n>

 " Coc shortcuts
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)

" vim easy motion plugin remap
map <Leader> <Plug>(easymotion-prefix)

"custom tabline
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
let g:tablineclosebutton=1

" status line

let g:lightline = {
      \ 'colorscheme': 'powerline',
 \ }
  
" Replace all is aliased to S.
nnoremap S :%s///g<Left><Left><Left>
