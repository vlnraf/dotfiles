
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Colorscheme (includes its own airline theme)
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"Plugin per parentesi aperte e chiuse
"Plug 'raimondi/delimitmate'

"plugin per modificare velocemente
Plug 'tpope/vim-surround'

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

Plug 'mbbill/undotree'

" MarkDown Preview
" If you don't have nodejs and yarn
" use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()
