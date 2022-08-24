set autowrite
set backspace=2
set encoding=utf-8
set history=50
set incsearch
set laststatus=2
set nobackup
set nocompatible
set noswapfile
set noshowmode
set nowritebackup
set ruler
set showcmd
set t_Co=256

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-capslock'
Plugin 'moll/vim-node'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'w0rp/ale'
Plugin 'chrisbra/NrrwRgn'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ayu-theme/ayu-vim'
Plugin 'roosta/srcery'
Plugin 'itchyny/lightline.vim'
Plugin 'alampros/vim-styled-jsx'
Plugin 'connorholyday/vim-snazzy'
Plugin 'mattn/emmet-vim'
" Plugin 'valloric/youcompleteme'
Plugin 'ajmwagar/vim-deus'
" Plugin 'kbarrette/mediummode'
" Plugin 'wikitopian/hardmode'
Plugin 'elixir-editors/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'camspiers/animate.vim'
" Plugin 'camspiers/lens.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'junegunn/fzf', { 'do': { -> fxf#install() }}

" Plugins
call vundle#end()

" go
let g:go_gopls_enabled=0

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' }}

" ALE
let &runtimepath.='~/.vim/bundle/ale'
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['X %d', '! %d', 'ok']

filetype plugin indent on
silent! helptags ALL

" Misc
let mapleader = "\<Space>"
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
let NERDSpaceDelims=1
let NERDTreeMinimalUI=1

" Use `jj` as Esc
imap jj <Esc>

" Insert new line
map <S-Enter> o<ESC>

" Tab stuff
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Numbers
set number
set numberwidth=4

" Syntax
syntax enable
syntax on


" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Tags like blocks
let g:html_indent_tabs = 'li\|p'

" CtrlP ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Splits
set splitbelow
set splitright

" Faster window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" JSX
let g:jsx_ext_required = 0

" Lightline
let g:lightline = { 'colorscheme': 'dracula' }

" Color scheme
" colorscheme snazzy
" colorscheme srcery
colorscheme dracula

:highlight Normal ctermbg=none

" Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

