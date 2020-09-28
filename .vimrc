"[ Plugins ]"
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Plug 'jiangmiao/auto-pairs'
"Plug 'scrooloose/nerdcommenter'
Plug 'moll/vim-bbye'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'koron/minimap-vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
"Plug 'zivyangll/git-blame.vim'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
Plug 'embark-theme/vim', { 'as': 'embark' }
call plug#end()

"[ Basic setup ]"
set encoding=utf-8
set number
set nowrap
set cul
set is
set hls
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=syntax
set nofoldenable
set autoindent
set cindent
set updatetime=500
syntax on
filetype on
filetype plugin on
filetype indent on
noh
set termguicolors

"[ Cursor shape for Windows: ]"
let &t_SI = "\e[5\ q"
let &t_SR = "\e[4\ q"
let &t_EI = "\e[3\ q"

"[ Color schemes ]""
"colorscheme vim-monokai-tasty
colorscheme embark
"let g:airline_theme = 'monokai_tasty'
let g:airline_theme = 'embark'
hi Search    cterm=none ctermbg=blue ctermfg=white
hi IncSearch cterm=none ctermbg=blue ctermfg=white
hi link htmlLink none

"[ Airline setup ]"
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1

"[ NERDTree setup ]"
let g:NERDTreeWinPos = 'right'

"[ GitGutter setup ]"
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '>'
let g:gitgutter_sign_removed            = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed   = '<'

"[ YouCompleteMe setup ]"
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
"let g:ycm_clangd_args = ['-std=c++20']
"let g:ycm_clangd_args = ['-I inc']

"[ Key bindings ]"

" \ or space, then:
" quit:                    q
" write:                   w
" split verically:         h
" split horizontally:      v
" reload settings:         r
" edit settings:           s
" new buffer:              n
" next buffer:             ]
" previous buffer:         [
" window up:               k
" window down:             j
" window left:             h
" window right:            l
" close buffer:            x
" cancel search highlight: c

" grow vertically: ctrl+h
" scroll up:       ctrl+k
" scroll down:     ctrl+j

nmap <Space> <Leader>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>v :wincmd v<CR>
nnoremap <Leader>s :e ~/.vimrc<CR>
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader>n :enew<CR>
nnoremap <Leader>] :bn<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>x :Bdelete<CR>
nnoremap <Leader>f :NERDTreeToggle<Bar>wincmd p<CR>
nnoremap <Leader>t :Xtt<CR>
nnoremap <Leader>c :noh<CR>
nnoremap <Leader>p :%s/\s\+$//e<CR>noh<CR>
"nnoremap <Leader>g :<C-u>call gitblame#echo()<CR>
nnoremap <leader>g :Magit<CR>
nnoremap <Leader>b :Gblame<CR>
nnoremap <Leader>z :wincmd c<CR>
nnoremap <Leader>a :wincmd x<CR>

nnoremap <C-h>     :wincmd ><CR>
nnoremap <C-K>     <C-Y>
nnoremap <C-J>     <C-E>

nnoremap <C-Y>     :call system('xclip', @0)<CR>
nnoremap <C-P>     :r !xclip -o<CR>

"[ Startup setup ]"
autocmd vimenter    *    NERDTree | wincmd p
autocmd BufEnter    *    if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
autocmd FileType    help wincmd L
