call plug#begin("~/.local/share/nvim/plugged")

Plug 'gioele/vim-autoswap'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'morhetz/gruvbox'
Plug 'burnettk/vim-angular'
Plug 'w0ng/vim-hybrid'
Plug 'uiiaoo/java-syntax.vim'
Plug 'xolox/vim-misc'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'mkitt/tabline.vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'itchyny/lightline.vim'                       
Plug 'vim-airline/vim-airline'                       
Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
Plug 'ryanoasis/vim-devicons'
Plug 'netsgnut/arctheme.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'voldikss/vim-floaterm'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'jremmen/vim-ripgrep'
Plug 'Dinduks/vim-java-get-set'
Plug 'mhinz/vim-startify'
Plug 'xolox/vim-session'
Plug 'liuchengxu/vista.vim'
Plug 'honza/vim-snippets'
Plug 'tomasiser/vim-code-dark'
call plug#end()

let mapleader =","

" general autocommands
" autocmd BufNewFile *.txt :write

" color scheme
" autocmd vimenter * colorscheme mountaineer
colorscheme codedark

set background=dark
" highlight EndOfBuffer ctermfg=bg ctermbg=bg

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
set cursorline
set clipboard=unnamedplus


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
" nnoremap <C-f> :Autoformat<CR>
nnoremap <F5> :e!<CR>
nnoremap vv mm vip= `m
nnoremap <C-f> mm gg=G `m
autocmd FileType typescript nnoremap <buffer> <C-f> mm :%!/home/frezer02/.nvm/versions/node/v13.11.0/bin/tsfmt --stdin <CR> `m
autocmd FileType html nnoremap <buffer> <C-f> mm :%!/home/frezer02/.nvm/versions/node/v13.11.0/bin/js-beautify --type html <CR> `m

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

 " Coc shortcuts 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)

" YCM shortcuts
" nmap <silent> gd :YcmCompleter GoTo<CR>
" nmap <silent> gr :YcmCompleter GoToReferences<CR>
" nmap <silent> rn :YcmCompleter RefactorRename<CR>

" emmet leader key 
let g:user_emmet_leader_key=','

" sessions
:let g:session_autoload = 'no'
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ ]
let g:startify_session_dir = '/home/frezer02/.vim/sessions'

"custom tabline
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
let g:tablineclosebutton=1

" custom fzf seach command
let $FZF_DEFAULT_COMMAND =  'git ls-files'


let g:airline_theme = 'codedark'

" startify logo
let g:startify_custom_header = [
      \ '                    .                    ',
      \ '    ##############..... ##############   ',
      \ '    ##############......##############   ',
      \ '      ##########..........##########     ',
      \ '      ##########........##########       ',
      \ '      ##########.......##########        ',
      \ '      ##########.....##########..        ',
      \ '      ##########....##########.....      ',
      \ '    ..##########..##########.........    ',
      \ '  ....##########.#########.............  ',
      \ '    ..################JJJ............    ',
      \ '      ################.............      ',
      \ '      ##############.JJJ.JJJJJJJJJJ      ',
      \ '      ############...JJ...JJ..JJ  JJ     ',
      \ '      ##########....JJ...JJ..JJ  JJ      ',
      \ '      ########......JJJ..JJJ JJJ JJJ     ',
      \ '      ######    .........                ',
      \ '                  .....                  ',
      \ '                    .                    ',
        \]

" Java specific settings
let b:javagetset_getterTemplate = 
    \ "\n" .
    \ "%modifiers% %type% %funcname%() { return %varname%; }"
