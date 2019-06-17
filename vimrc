colo molokai
syntax on

set number
set relativenumber
set mouse=a
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

nmap j gj
nmap k gk

set hlsearch
set incsearch
nnoremap <CR> :nohlsearch<CR><CR>

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="81,".join(range(121,999),",")

