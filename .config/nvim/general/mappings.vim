
if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:rehash256 = 1
let g:Powerline_symbols='unicode'
let g:Powerline_theme='long'

"open a new tab
nnoremap <C-t> :tabnew<Space>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Setta <C-w>h per lo split delle finestre in orizzontale
nnoremap <C-w>h :split<enter>

"Disable arrow keys in Normal mode
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"Disable arrow keys in Insert mode
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

"Auto parenthesis indentation
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko


