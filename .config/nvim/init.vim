call plug#begin("~/.local/share/nvim/plugged")

Plug 'gioele/vim-autoswap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0ng/vim-hybrid'
Plug 'uiiaoo/java-syntax.vim'
Plug 'xolox/vim-misc'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'mkitt/tabline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'                       
Plug 'vim-airline/vim-airline-themes'
" Plug 'powerline/powerline'
Plug 'edkolev/promptline.vim'
Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'voldikss/vim-floaterm'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'jremmen/vim-ripgrep'
Plug 'Dinduks/vim-java-get-set'
Plug 'xolox/vim-session'
Plug 'liuchengxu/vista.vim'
Plug 'honza/vim-snippets'
Plug 'tomasiser/vim-code-dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-python/python-syntax'
call plug#end()

let mapleader ="z"

" color scheme
colorscheme codedark
set background=dark
" colorscheme PaperColor
" set background=light


set syntax=on
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
set autoread
let g:coc_disable_startup_warning = 1
set t_Co=256                    " Set if term supports 256 colors.
set guitablabel=%N\ %f
set mouse=a
set autoread
set path+=/work
set scrolloff=999
set cursorline
set clipboard=unnamedplus
set shortmess=a
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

" easier copying to cliboard
vnoremap == "+y

" better quotes Parenthesis handling
inoremap {{ {<CR><BS>}<Esc>ko
inoremap { {}<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap (( ()<Left>
inoremap [[ []<Left>

"create empty lines
nnoremap <C-Space> o<Esc>k
" works only in graphical vim
nnoremap <S-Space> O<Esc>j

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
nnoremap vp vip
nnoremap dp dip
nnoremap cp cip
nnoremap yp yip

" insert mode abbreviations
ab abbGrid div.container>div.row>div.col-*3

" move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv

" vimrc:  edit and source shortcuts 
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" edid linux configs
nnoremap <leader>ei3 :e /home/frezer02/.config/i3/config<cr>

" file explorer
nnoremap <C-n> :NERDTreeMirror<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

" Formating and refsheshing files
nnoremap <F5> :e!<CR>
nnoremap vv mm vip= `m
nnoremap <C-f> mm gg=G `m
autocmd FileType typescript nnoremap <buffer> <C-f> mm :%!/home/frezer02/.nvm/versions/node/v13.11.0/bin/tsfmt --stdin <CR> `m
autocmd FileType html nnoremap <buffer> <C-f> mm :%!/home/frezer02/.nvm/versions/node/v13.11.0/bin/js-beautify --type html <CR> `m
autocmd FileType json nnoremap <buffer> <C-f> mm :%!/home/frezer02/.nvm/versions/node/v13.11.0/bin/js-beautify --type js <CR> `m

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" split resize
nnoremap <C-Down> :resize +5 <CR>
nnoremap <C-Up> :resize -5 <CR>
nnoremap <C-Left> :vertical resize +5 <CR>
nnoremap <C-Right> :vertical resize -5 <CR>

" enter command mode
nnoremap <Space> :
vnoremap <Space> :

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" line navigation
nnoremap 0 0^

" source plugin configurations

 source ~/.config/nvim/plugins/airline.vim
 source ~/.config/nvim/plugins/coc.vim
 source ~/.config/nvim/plugins/emmet.vim
 source ~/.config/nvim/plugins/fzf.vim
 source ~/.config/nvim/plugins/tabline.vim
 source ~/.config/nvim/plugins/vim-java-get-set.vim

 let g:python_highlight_all = 1
