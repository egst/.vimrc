"[ Plugins ]"
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'moll/vim-bbye'
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
syntax on
noh

"[ Cursor shape for Windows: ]"
set "guicursor=n-v-ve-o-r-c-cr-a:hor20,i-ci:ver20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor

"[ Color schemes ]"
colorscheme vim-monokai-tasty
let g:airline_theme = 'monokai_tasty'

"[ Airline setup ]"
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1

"[ NERDTree setup ]"
let g:NERDTreeWinPos = 'right'

"[ Key bindings ]"
" \ (or space), then:
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
" open terminal:           t
" cancel search highlight: c
" scroll up:   ctrl+k
" scroll down: ctrl+j
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
nnoremap <Leader>x :Xbx<CR>
nnoremap <Leader>f :NERDTreeToggle<Bar>wincmd p<CR>
nnoremap <Leader>t :Xtt<CR>
nnoremap <Leader>c :noh<CR>
nnoremap <C-K>     <C-Y>
nnoremap <C-J>     <C-E>
inoremap <C-h>     <Left>
inoremap <C-j>     <Down>
inoremap <C-k>     <Up>
inoremap <C-l>     <Right>

"[ Commands ]"
command! Xbx if @% == '' | bp | else | try | bp | bd # | catch | bd | endtry | endif

"[ Startup setup ]"
autocmd vimenter    *    NERDTree | wincmd p
autocmd BufEnter    *    if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
autocmd FileType    help wincmd L
