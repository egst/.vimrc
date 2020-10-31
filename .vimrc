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
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
"Plug 'zivyangll/git-blame.vim'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
Plug 'embark-theme/vim', {'as': 'embark'}
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
"set expandtab
set noexpandtab
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
set list listchars=tab:\|\ 
set signcolumn=yes
set mouse=a
set ttymouse=sgr
set ttimeoutlen=0

"" Cursor:
let &t_SI = "\e[5\ q"
let &t_SR = "\e[3\ q"
let &t_EI = "\e[7\ q"

"" Colors:
colorscheme embark
hi Search    cterm=none ctermbg=blue ctermfg=white
hi IncSearch cterm=none ctermbg=blue ctermfg=white
hi link htmlLink none
hi SpecialKey ctermfg=none guifg=grey40

"" Airline:
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1
" TODO:
let g:NERDTreeMouseMode=2
let g:webdevicons_conceal_nerdtree_brackets = 1

"" NERDTree:
let g:NERDTreeWinPos = 'right'

"" GitGutter:
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '>'
let g:gitgutter_sign_removed            = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed   = '<'

"" Bindings:

nmap <Space> <Leader>

" +-----+ n - normal
" |n   s| s - shift
" |c   l| c - control
" +-----+ l - leader
"
" LHS - Edit                      RHS - Move
" +-----+-----+-----+-----+-----+ +-----+-----+-----+-----+-----+
" |q   :|y   J|p   P|v   V|>> <<| |G  gg|b   B|n   N|e   E|w   W|
" |     |   xc|   xp|^V   |   tt| |   sc|cp sn|cn   |   sr|   so|
" +-----+-----+-----+-----+-----+ +-----+-----+-----+-----+-----+
" |@   .|i   I|a   A|o   O|u  ^R| |/   ?|h   (|k   {|j   }|l   )|
" |   cw|     |     |     |   tc| |   ch|bp wl|su wu|sd wd|bn wl|
" +-----+-----+-----+-----+-----+ +-----+-----+-----+-----+-----+
" |;   ,|r   R|c   s|d   x|"  ~h| |m   `|^   0|f   T|t   T|$   %|
" |   cq|   bc|   wc|   ws|     | |     |     |   pb|   pg|   pn|
" +-----+-----+-----+-----+-----+ +-----+-----+-----+-----+-----+
"
" cq - quit                     (:q)
" bc - close buffer
" wc - close window             (C-W c)
" ws - switch windows h.        (C-W c)
" cw - write                    (:w)
" xc - xclip copy
" xp - xclip paste
" cp - previous cursor position (C-O)
" cn - next cursor position     (C-I)
" sn - next/prev search result  (*) (#)
" bp - previous buffer          (:bp)
" bn - next buffer              (:bn)
" su - scroll up                (C-Y)
" sd - scroll down              (C-E)
" sc - scroll center            (zz)
" tt - toggle spaces/tabs
" tc - clear trailing wspace
" wl - left window              (C-Wh)
" wr - right window             (C-Wl)
" wu - upper window             (C-Wk)
" wd - lower window             (C-Wj)
" ch - cancel highlight         (:noh)
" so - open vimrc
" sr - reload vimrc
" pn - toggle file browser
" pg - open git control
" pb - open git blame

let g:NERDTreeMapActivateNode = ''
let g:NERDTreeMapOpenExpl     = ''

" LHS:
nnoremap Q  :
nnoremap q  q
nnoremap d  y
xnoremap d  y
nnoremap dd yy
nnoremap D  J
nnoremap r  p
xnoremap r  p
nnoremap R  R
nnoremap w  v
nnoremap W  V
nnoremap b  >>
xnoremap b  >
nnoremap B  <<
xnoremap B  <
nnoremap a  @
nnoremap A  .
nnoremap s  i
nnoremap S  I
nnoremap h  a
nnoremap H  A
nnoremap t  o
nnoremap T  O
autocmd FileType * nnoremap <nowait> <buffer>
       \ g  u
nnoremap G  <C-R>
nnoremap z  ;
nnoremap Z  ,
nnoremap x  r
xnoremap x  r
nnoremap X  R
nnoremap m  c
nnoremap mm cc
xnoremap m  c
nnoremap M  s
nnoremap c  d
nnoremap cc dd
xnoremap c  d
nnoremap C  x
nnoremap v  "
nnoremap V  ~h

" RHS:
nnoremap j  G
xnoremap j  G
onoremap j  G
nnoremap J  gg
xnoremap J  gg
onoremap J  gg
nnoremap f  b
xnoremap f  b
onoremap f  b
nnoremap F  B
xnoremap F  B
onoremap F  B
nnoremap u  n
nnoremap U  N
nnoremap p  e
xnoremap p  e
onoremap p  e
nnoremap P  E
xnoremap P  E
onoremap P  E
nnoremap ;  w
xnoremap ;  w
onoremap ;  w
nnoremap :  W
xnoremap :  W
onoremap :  W
autocmd FileType * nnoremap <nowait> <buffer>
       \ y  /
" TODO: Is this needed?
"xunmap y
onoremap y  i
nnoremap Y  ?
nnoremap n  h
xnoremap n  h
onoremap n  h
nnoremap N  (
xnoremap N  (
onoremap N  (
nnoremap e  k
xnoremap e  k
onoremap e  k
nnoremap E  {
xnoremap E  {
onoremap E  {
nnoremap o  j
xnoremap o  j
onoremap o  j
nnoremap O  }
xnoremap O  }
onoremap O  }
nnoremap i  l
silent! unmap <buffer> ic
xnoremap <nowait>
       \ i  l
onoremap i  l
nnoremap I  )
xnoremap I  )
onoremap I  )
nnoremap k  m
nnoremap K  `
nnoremap l  ^
xnoremap l  ^
onoremap l  ^
nnoremap L  0
xnoremap L  0
onoremap L  0
nnoremap ,  f
xnoremap ,  f
onoremap ,  f
nnoremap <  F
xnoremap <  F
onoremap <  F
nnoremap .  t
xnoremap .  t
onoremap .  t
nnoremap >  T
xnoremap >  T
onoremap >  T
nnoremap /  $
xnoremap /  $
onoremap /  $
nnoremap ?  %
xnoremap ?  %
onoremap ?  %

" Close:
nnoremap <Leader>z :q<CR>
nnoremap <Leader>x :Bdelete<CR>
nnoremap <Leader>m :wincmd c<CR>
nnoremap <Leader>c :wincmd x<CR>

" Save:
nnoremap <Leader>a :w<CR>

" Windows:
nnoremap <Leader>n :wincmd h<CR>
nnoremap <Leader>e :wincmd k<CR>
nnoremap <Leader>o :wincmd j<CR>
nnoremap <Leader>i :wincmd l<CR>

" Xclip:
nnoremap <Leader>d :call system('xclip', @0)<CR>
nnoremap <Leader>r :r !xclip -o<CR>

" Visual:
nnoremap <C-w> <C-V>

" Buffers:
nnoremap <C-n> :bp<CR>
nnoremap <C-i> :bn<CR>

" Scroll:
nnoremap <C-e> <C-Y>
nnoremap <C-o> <C-E>
nnoremap <Leader>j zz

" Search:
nnoremap <Leader>u #
nnoremap <Leader>U *
nnoremap <Leader>y :noh<CR>

" History:
nnoremap <C-F> <C-O>
nnoremap <C-U> <C-I>

" Indentation:
nnoremap <Leader>b :if &expandtab<CR>set noexpandtab<CR>else<CR>set expandtab<CR>endif<CR><CR>
nnoremap <Leader>g :%s/\s\+$//e<CR>

" Settings:
nnoremap <Leader>; :e ~/.vimrc<CR>
nnoremap <Leader>p :source ~/.vimrc<CR>

" Plugins:
nnoremap <Leader>/ :NERDTreeToggle<Bar>wincmd p<CR>
nnoremap <leader>. :Magit<CR>
nnoremap <Leader>, :Gblame<CR>

"" Events:
autocmd VimEnter    *    NERDTree | wincmd p
autocmd BufEnter    *    if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
autocmd FileType    help wincmd L
autocmd BufWinEnter *    silent! normal! g`"
