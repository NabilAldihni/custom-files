syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set relativenumber
set termguicolors
set hidden

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'

call plug#end()

let mapleader = " "

nmap <leader>ru :w<CR>:!make && ./ssmap maps/uoft.txt<CR>
nmap <leader>rh :w<CR>:!make && ./ssmap maps/huntsville.txt<CR>

nmap <leader>gs :G status<CR>
nmap <leader>gd :G diff<CR>
nmap <leader>ga :G add .<CR>
nmap <leader>go :G add
nmap <leader>gc :G commit -m ""<Left>
nmap <leader>gp :G push<CR>
nmap <leader>gl :G pull<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

nnoremap <Tab> %
map <CR> o<Esc>
map <C-f> <Esc><Esc>:Files!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
nnoremap <leader>0 ^
nnoremap <leader>; :w<CR><C-^>
nnoremap <leader>: :ls<CR>:b<Space>
nnoremap <leader>d :bd<CR>
nnoremap <leader>m :!man
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

colorscheme gruvbox
set background=dark
