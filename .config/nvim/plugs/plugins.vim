
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Colorscheme (includes its own airline theme)
Plug 'morhetz/gruvbox'

"Plugin per parentesi aperte e chiuse
Plug 'raimondi/delimitmate'

"plugin per modificare velocemente
Plug 'tpope/vim-surround'

"FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"barra di vim
Plug 'vim-airline/vim-airline'
"Themi per vim airline
Plug 'vim-airline/vim-airline-themes'

" color hexacode colors
" Plug 'norcalli/nvim-colorizer.lua'

" MarkDown Preview
" If you don't have nodejs and yarn
" use pre build
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" set dev-icons
" Plug 'ryanoasis/vim-devicons'

" python highlighter
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

colorscheme gruvbox
set background=dark

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
