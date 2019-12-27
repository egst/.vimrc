" Plugins
call plug#begin('~/.vim/plugged')
Plug 'patstockwell/vim-monokai-tasty'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'
call plug#end()

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Syntax highlighting
syntax on

" Color schemes
colorscheme vim-monokai-tasty
let g:airline_theme = 'monokai_tasty'

" Key bindings
nnoremap <space>w :w<CR>
nnoremap <space>q :q<CR>
nnoremap <space>j :bp<CR>
nnoremap <space>k :bn<CR>
nnoremap <space>h <C-W>h
nnoremap <space>l <C-W>l
nnoremap <space>x :Bdelete<CR>
nnoremap <space>r :source ~/.vimrc<CR>
nnoremap <space>s :e ~/.vimrc<CR>
nnoremap <space>t :NERDTreeToggle<CR>

" Cursor shape
" For terminal on OS X:
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" Misc plugin settings
let g:NERDTreeWinPos = 'right'
let g:airline#extensions#tabline#enabled = 1

" NERDTree settings
" Open upon entering vim.
" Exit vim with only NERDTree left.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd w

