let mapleader=" "
set mouse=a
set relativenumber
set number
set noswapfile
set hidden
set pumheight=10
set noerrorbells
set signcolumn=number

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" setted for dev-icons plugin
set encoding=UTF-8

"Use F2 to better Copy Paste with indentation
set pastetoggle=<F2>

set splitbelow
set splitright

" Be smart when using tabs ;)
autocmd FileType cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" set nosplitbelow

let g:python3_host_prog = "~/Environments/env3.6/bin/python"

" To unname clipboards and copy paste with the vim commands
" set clipboard=unnamedplus


" let g:clang_format#auto_format=1

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
