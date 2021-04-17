syntax on


set nopaste
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber
set nowrap
set t_Co=256
set encoding=utf-8
set guifont=*
set guioptions-=T
set guioptions-=r
set go-=L


let g:airline_powerline_fonts = 1
let g:OmniSharp_server_stdio = 1


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'

call plug#end()

color gruvbox
nmap<leader>gd <plug>(coc-definition)
nmap<leader>gr <Plug>(coc-references)
nnoremap <C-p> :Files<CR>


set background=dark

let mapleader = " "
"keybindig to move in windows, undotree, and split
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>i :UndotreeHide<CR>
nnoremap <leader>p :vsp<CR>


"opens explorer and resizes it
nnoremap <leader>v :wincmd v<bar> :Ex <bar><CR>

"manual resize keybindig
nnoremap <silent><leader>+ :vertical resize +4<CR>
nnoremap <silent><leader>- :vertical resize -4<CR>

"sets ctrl + k to esc (exit insert or visual mode)
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>


"copy and paste from and to other progams
vnoremap <C-c> "+y
map <C-v> "+P



"alt for visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"integrated terminal
fu Geterm()
    term
    wincmd x
    res 20
endfu
nnoremap <leader>t :call Geterm()<CR>
