set number
let mapleader=" "

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=darkgray ctermfg=None term=None cterm=None gui=None
aug END

au BufNewFile,BufRead *.exs set filetype=elixir
au BufNewFile,BufRead *.types set filetype=elixir

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'ElmCast/elm-vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'wycats/nerdtree'
Plug 'raichoo/purescript-vim'
Plug 'tpope/vim-endwise'
Plug 'rust-lang/rust.vim'
Plug 'tsaleh/vim-align'
Plug 'idris-hackers/idris-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Initialize plugin system
call plug#end()
syntax on
filetype on
filetype plugin indent on

set autoindent
set nosmartindent
set expandtab
set splitright


" Act more 'normal' about backpacking
" " e.g. to backspace past start of edit
set backspace=indent,eol,start
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|deps\|elm-stuff\|_build'

set noswapfile

let g:airline_theme='base16'

" Show word count
let g:airline#extensions#wordcount#enabled = 1

colorscheme gruvbox

let g:gruvbox_contrast_dark = "hard"
set background=dark

"""
" Mappings
"""

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

