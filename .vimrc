"" Plugins:

call plug#begin('~/.vim/plugged')

" Generic tweaks:
Plug 'sheerun/vim-polyglot'
Plug 'justinmk/vim-syntax-extra'
Plug 'moll/vim-bbye'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-easy-align'
Plug 'adelarsq/vim-matchit'
Plug 'alvan/vim-closetag'
Plug 'captbaritone/better-indent-support-for-php-with-html'

" Visual elements:
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Automplete and intellisence:
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy search:
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File tree:
Plug 'scrooloose/nerdtree'

" Project tree:
Plug 'liuchengxu/vista.vim'

" Registers preview:
Plug 'gennaro-tedesco/nvim-peekup'

" Visual modes:
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Git integration:
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'

" Color themes:
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'embark-theme/vim', {'as': 'embark'}
Plug 'patstockwell/vim-monokai-tasty'
Plug 'NLKNguyen/papercolor-theme'

" Currently unused:
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'RishabhRD/popfix'
"Plug 'RishabhRD/nvim-lsputils'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'tpope/vim-ragtag'
"Plug 'othree/xml.vim'
"Plug 'sukima/xmledit/'
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'dense-analysis/ale'

call plug#end()

"" General:

set encoding=utf-8
set number
set nowrap
set cul
set is
set hls
set tabstop=4
set shiftwidth=4
set expandtab
"set noexpandtab
set foldmethod=indent
set nofoldenable
set autoindent
set cindent
set updatetime=500
set hidden
set colorcolumn=120

syntax   on
filetype on
filetype plugin on
filetype indent on
noh

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set list lcs=tab::\ ,trail:-
"set list lcs=tab:\|\ ,trail:-
set signcolumn=yes
set mouse=a

"set ttymouse=sgr

set ttimeoutlen=0
set conceallevel=3

set number relativenumber

set path+=**
set wildmenu

set undodir=~/.vim/undodir
set undofile

"" Cursor:
let &t_SI = "\e[5\ q"
let &t_SR = "\e[3\ q"
let &t_EI = "\e[7\ q"
set guicursor=n-v-ve-r-cr:block-blinkon1,i-c-ci-sm:ver10-blinkon1,o-r:hor10

"" Colors:
colorscheme embark
"colorscheme onehalflight
"hi Search    cterm=none ctermbg=blue ctermfg=white
"hi IncSearch cterm=none ctermbg=blue ctermfg=white
"hi link htmlLink none
hi! SpecialKey  guifg=grey40
hi! EndOfBuffer guibg=bg guifg=bg
autocmd! User GoyoLeave hi! EndOfBuffer guibg=bg guifg=bg

"" Airline:
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1

"" NERDTree:
let g:NERDTreeWinPos                        = 'right'
" TODO:
let g:NERDTreeMouseMode                     = 2
let g:webdevicons_conceal_nerdtree_brackets = 1

"" GitGutter:
let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '>'
let g:gitgutter_sign_removed            = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed   = '<'
let g:gitgutter_map_keys                = 0

"" Goyo:
let g:goyo_width = 120
let g:goyo_linenr = 1

"" Limelight:
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 1

"" Vista:
let g:vista_default_executive = 'coc'
"let g:vista_icon_indent = ["▸ ", ""]
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']

"" Closetag:
let g:closetag_filenames = '*.html,*.php'

"" Bindings:

" Leader:
nmap <Space> <Leader>

" Escape:
inoremap <C-C> <Esc>
"inoremap <Esc> <C-C>

" Casing:
nnoremap ~ ~h

" Hardcore:
"nnoremap <Up> <Nop>
"xnoremap <Up> <Nop>
"nnoremap <Down> <Nop>
"xnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"xnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"xnoremap <Right> <Nop>

" Redo:
nnoremap U <C-R>

" Close:
nnoremap <Leader>q :qa<CR>
nnoremap <Leader>x :Bdelete<CR>
nnoremap <Leader>c :wincmd c<CR>
nnoremap <Leader>m :wincmd x<CR>

" Save:
nnoremap <Leader>w :w<CR>
nnoremap <C-S>     :w<CR>

" Windows:
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>v :wincmd v<CR>
"nnoremap <C-J>     :wincmd ><CR>
"nnoremap <C-Y>     :wincmd <<CR>
nnoremap <Home>    :wincmd <<CR>
nnoremap <End>     :wincmd ><CR>

" Numbers:
"nnoremap <F5> <C-A>
"nnoremap <F1> <C-X>

" Xclip:
nnoremap <Leader>y :call system('xclip', @0)<CR>
nnoremap <Leader>p :r !xclip -o<CR>

" Buffers:
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
"nnoremap <Leader>b :b 
"nnoremap <Leader>f :e 

" Scroll:
"nnoremap <Up>      <C-Y>
"nnoremap <Down>    <C-E>
"nnoremap <Leader>j zz

" Search:
"nnoremap <Leader>p *
"nnoremap <Leader>u #
"nnoremap <Leader>f :b 
"nnoremap <Leader>; :e 
" no [H]ighlight:
nnoremap <Leader>H :noh<CR>

" Indentation:
" [t]oggle [t]abs & spaces:
nnoremap <Leader>t :if &expandtab<CR>set noexpandtab<CR>else<CR>set expandtab<CR>endif<CR><CR>
" [P]urge trailing whitespace:
nnoremap <Leader>P :%s/\s\+$//e<CR>

" Settings:
" [s]ettings:
nnoremap <Leader>s :e ~/.vimrc<CR>
" [r]eload settings:
nnoremap <Leader>r :source ~/.vimrc<CR>

" Insert:
"inoremap <Up>   <C-P>
"inoremap <Down> <C-N>

" Plugins:
" [F]iles:
nnoremap <Leader>F :NERDTreeToggle<Bar>wincmd p<CR>
" [g]it:
nnoremap <Leader>g :Magit<CR>
" [G]it:
nnoremap <Leader>G :Gblame<CR>
" [M]arks:
nnoremap <Leader>M :marks<CR>
" [d]efinition:
nnoremap <Leader>d :call CocAction('jumpDefinition')<CR>
" [f]iles:
nnoremap <Leader>f :Files<CR>
" [b]uffers:
nnoremap <Leader>b :Buffers<CR>
" [Z]en:
nnoremap <Leader>Z :Goyo<CR>
" [z]en:
nnoremap <Leader>z :Limelight!!<CR>
" [j]?
"nnoremap <Leader>j :Vista!<CR>:Vista finder<CR>
" [J]?
"nnoremap <Leader>J :Vista!!<CR>
" [E]rror:
nmap     <Leader>E <Plug>(coc-diagnostic-next-error)
" [a]llign:
xmap     ga        <Plug>(EasyAlign)
" [a]llign:
nmap     ga        <Plug>(EasyAlign)
" [S]witch [S]ource / header:
nmap     <Leader>S :call CocAction('runCommand', 'clangd.switchSourceHeader')<CR>

"" Events:
"autocmd VimEnter    *    NERDTree | wincmd p
"autocmd BufEnter    *    if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
autocmd FileType    help wincmd L
autocmd BufWinEnter *    silent! normal! g`"

"" Commands:

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"" Tweaks:

" Indentation:
func! Indent(ind)
    if &sol
        set nostartofline
    endif
    let vcol = virtcol('.')
    if a:ind
        norm! >>
        exe "norm!". (vcol + shiftwidth()) . '|'
    else
        norm! <<
        exe "norm!". (vcol - shiftwidth()) . '|'
    endif
endfunc

" Location:
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction
" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction
" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

"" Temporary:
nnoremap <Leader>R :call webdevicons#softRefresh()<CR>
augroup nerdtree
  autocmd!
  autocmd FileType nerdtree syntax clear NERDTreeFlags
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree setlocal conceallevel=3
  autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END
