source $HOME/.config/nvim/vim-plugs/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim
" source $HOME/.config/nvim/plug-config/completion.vim

:autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
