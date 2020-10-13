source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim

"---------------------------------------------------------FZF--------------------------------------------------
"File finder in git
nmap <leader>F :GFiles<CR>
"file finder in project
nmap <leader><space>  :Files<CR>

"search in buffer
nmap <leader>b :Buffers<CR>
"search in history
nmap <leader>h :History<CR>

"TagFinder
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>

"lineFinder
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>' :Marks<CR>

"ProjectFinder
nmap <leader>/ :Ag<Space>
nmap <leader>/ :Rg<Space>
