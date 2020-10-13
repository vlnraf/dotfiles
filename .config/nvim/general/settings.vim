let mapleader=" "
set mouse=a
set relativenumber
set number
set noswapfile
set hidden
set pumheight=10

" setted for dev-icons plugin
set encoding=UTF-8

"set | per vedere indentazione
set pastetoggle=<F2>

set splitbelow
set splitright

" Be smart when using tabs ;)
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" To unname clipboards and copy paste with the vim commands
set clipboard=unnamedplus

colorscheme onedark
set background=dark

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
