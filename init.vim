call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'
Plug 'embear/vim-localvimrc'
Plug 'easymotion/vim-easymotion'
Plug 'tikhomirov/vim-glsl'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'


set nu rnu
set hidden
set nobackup
set noswapfile
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set cursorline

luafile $HOME/.config/nvim/treesitter.lua

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/clang-format.vim
source $HOME/.config/nvim/ctrlp.vim
source $HOME/.config/nvim/easymotion.vim
source $HOME/.config/nvim/nerdtree.vim

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
map <C-p> :GFiles<CR>
map <C-F> :Ag<CR>

set background=dark
colorscheme gruvbox 

set laststatus=2

inoremap jk <Esc>
inoremap kj <Esc>
