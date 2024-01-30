let mapleader = ","
let g:mapleader = ","

set relativenumber
set timeoutlen=3000

" Clear search highliting 
nnoremap <leader>h :nohlsearch<CR>
" Page down and center
nnoremap <C-d> <C-d>zz
" Page up and center
nnoremap <C-u> <C-u>zz

" Next Error and center
nnoremap <leader>l :cnext<CR>zz
" Previous Error and center
nnoremap <leader>h :cprevious<CR>zz

" Next search match
nnoremap n nzz
" Previous search match
nnoremap N Nzz

" Escape insrt mode
inoremap fj   <Esc>

