
call plug#begin('~/.vim/plugged')

" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


"Colorscheme (includes its own airline theme)
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"LSP nvim
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"Plugin per parentesi aperte e chiuse
"Plug 'raimondi/delimitmate'

"plugin per modificare velocemente
" Plug 'tpope/vim-surround'

"FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"barra di vim
Plug 'vim-airline/vim-airline'
"Themi per vim airline
Plug 'vim-airline/vim-airline-themes'

" Git integration in Vim
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Plug 'mbbill/undotree'

" Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']}

" MarkDown Preview
" If you don't have nodejs and yarn
" use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" between plug#begin/plug#end

call plug#end()
