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
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'wincent/terminus'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/xml.vim'
Plug 'chrisbra/improvedft'
Plug 'christoomey/vim-tmux-navigator'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()

let mapleader =" "

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
set path+=/work
set scrolloff=999
set shortmess=a
set incsearch
set lazyredraw
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" easier copying to cliboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p
noremap <leader>p "0p 
vnoremap <leader>p "0p 

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

" move lines in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap > >gv
vnoremap < <gv
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

" vimrc:  edit and source shortcuts 
nnoremap <leader>en  :e $MYVIMRC<cr>
nnoremap <leader>sn  :source $MYVIMRC<cr> :e! <cr>

" edid linux configs
nnoremap <leader>ei3 :e /home/frezer02/.config/i3/config<cr>

" file explorer
nnoremap <C-n> :NERDTreeMirror<CR>
nnoremap <C-c> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :GFiles<CR>

" Formating and refsheshing files
" nnoremap <F5> :e!<CR>
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


" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" line navigation
nnoremap 0 0^
nnoremap <leader>0 0

"  some custom remaps with leader key
nnoremap <leader>i :echo @% <CR>
nnoremap <leader>r :e! <CR>
nnoremap <leader>c cc<Esc>
nnoremap <leader>z :MaximizerToggle<Esc>
nnoremap <leader>t :tabnew<Esc>
nnoremap <leader>w :tabclose<Esc>

" source plugin configurations
 source ~/.config/nvim/plugins-config/airline.vim
 source ~/.config/nvim/plugins-config/coc.vim
 source ~/.config/nvim/plugins-config/emmet.vim
 source ~/.config/nvim/plugins-config/fzf.vim
 source ~/.config/nvim/plugins-config/tabline.vim
 source ~/.config/nvim/plugins-config/vim-java-get-set.vim
 source ~/.config/nvim/plugins-config/vim-session
 source ~/.config/nvim/plugins-config/vimspector.vim
 source ~/.config/nvim/plugins-config/vim-python.vim
