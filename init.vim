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
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'easymotion/vim-easymotion'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'


set number
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4


source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/clang-format.vim
source $HOME/.config/nvim/ctrlp.vim
source $HOME/.config/nvim/cpp-highlight.vim
source $HOME/.config/nvim/easymotion.vim

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

map <C-p> :Files<CR>

colorscheme badwolf
set laststatus=2

