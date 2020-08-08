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
Plug 'mattn/emmet-vim'


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
set smarttab
set smartindent
set autoindent
set autoindent
set autoread
let g:coc_disable_startup_warning = 1
set t_Co=256                    " Set if term supports 256 colors.
set guitablabel=%N\ %f
set mouse=a
set autoread
set path+=/work
set scrolloff=999
set filetype

" better Parenthesis handling
inoremap {{ {<CR><BS>}<Esc>ko

" move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" vimrc:  edit and source shortcuts 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" file explorer
nnoremap <C-n> :NERDTreeMirror<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
"
" Formating and refsheshing files
nnoremap <C-f> :Autoformat<CR>
nnoremap <F5> :e!<CR>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enter command mode
nnoremap <Space> :

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

 " Coc shortcuts 
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gm <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> rn <Plug>(coc-rename)

" vim easy motion plugin remap
map <Leader> <Plug>(easymotion-prefix)

" emmet leader key 
let g:user_emmet_leader_key=','

"custom tabline
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
let g:tablineclosebutton=1

" custom fzf seach command
let $FZF_DEFAULT_COMMAND =  'git ls-files'

" status line
let g:lightline = {
      \ 'colorscheme': 'powerline',
 \ }
  
" Replace all is aliased to S.
nnoremap S :%s///g<Left><Left><Left>
