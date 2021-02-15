" easier copying to cliboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p
noremap <leader>p "0p 
vnoremap <leader>p "0p 

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

nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j
vnoremap > >gv
vnoremap < <gv


" line navigation
nnoremap 0 0^
nnoremap <leader>0 0

"  some custom remaps with leader key
nnoremap <leader>i :echo @% <CR>
nnoremap <leader>r :e! <CR>
nnoremap <leader>c cc<Esc>
noremap <leader>p "0p 
vnoremap <leader>p "0p 
