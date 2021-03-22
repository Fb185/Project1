syntax on

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

let g:airline_powerline_fonts = 1
let g:OmniSharp_server_stdio = 1


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

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

"integrated terminal
fu GetTerm()
    term
    wincmd x
    res 23
endfu
nnoremap <leader> t :call GetTerm()<CR>


