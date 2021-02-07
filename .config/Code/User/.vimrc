let mapleader =" "
" easier copying to cliboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p
noremap <Space>p "0p 
vnoremap <Space>p "0p 

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

nnoremap <Space>o o<Esc>k
nnoremap <Space>O O<Esc>j
vnoremap > >gv
vnoremap < <gv


" line navigation
nnoremap 0 0^
nnoremap <Space>0 0

"  some custom remaps with leader key
nnoremap <Space>i :echo @% <CR>
nnoremap <Space>r :e! <CR>
nnoremap <Space>c cc<Esc>
noremap <Space>p "0p 
vnoremap <Space>p "0p 
