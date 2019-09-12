set number
let mapleader=" "

aug CursorInsert
  au!
  autocmd InsertLeave * setlocal nocursorline
  autocmd InsertEnter * setlocal cursorline
  autocmd InsertLeave * highlight CursorLine ctermbg=None ctermfg=None term=None cterm=None gui=None
  autocmd InsertEnter * highlight CursorLine ctermbg=black ctermfg=None term=None cterm=None gui=None
aug END

au BufNewFile,BufRead *.exs set filetype=elixir
au BufNewFile,BufRead *.types set filetype=elixir

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
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
Plug 'reasonml-editor/vim-reason-plus'


" Initialize plugin system
call plug#end()
syntax on
filetype on
filetype plugin indent on

set autoindent
set nosmartindent
set expandtab
set splitright
set hidden


" Act more 'normal' about backpacking
" " e.g. to backspace past start of edit
set backspace=indent,eol,start
let g:ctrlp_custom_ignore = 'node_modules$\|\.DS_Store$\|\.git$\|deps$\|elm-stuff$\|_build$'

set noswapfile

let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['ale', 'quickfix', 'tabline']
let g:airline#extensions#tabline#left_sep = '|'

let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

" Show word count
let g:airline#extensions#wordcount#enabled = 1

colorscheme gruvbox

let g:gruvbox_contrast_dark = "soft"
set background=dark

let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

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


" New tab
nmap <leader>T :enew<cr>
" Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

nmap <leader>. :bnext<CR>
nmap <leader>, :bprevious<CR>

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

