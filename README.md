# dotfiles

- terminal: alacritty

- wm: i3 (trying to switch to xmonad)

- editor: neovim

- file manager: ranger-thunar
Medium

### Before use neovim

[Coc-vim](https://github.com/neoclide/coc.nvim)

**and see other plugin pages to just look the dependencies**

### Use this bash file to install coc-extensions
```bash
#!/usr/bin/bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

npm install coc-snippets coc-python coc-tsserver coc-json coc-highlight coc-explorer coc-emoji coc-vimlsp --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
```

use layoutscreen to restore multi monitor screen (it's the same script in layoutscreen/screen.sh but renamed and stored in /usr/bin/)


> ### Good Resources
> 
> - how change Time Zone in linux: [timezone](https://phoenixnap.com/kb/how-to-set-or-change-timezone-date-time-ubuntu)   
> - [video] how to manage your dotfiles and save it on github: [dotfiles](https://www.youtube.com/watch?v=awtfkl50bUQ&ab_channel=ElliotJackson)    
> - [text] how to manage your dotfiles and save it on github: [dotfiles manage](https://www.atlassian.com/git/tutorials/dotfiles)    
> - how to manage git with github, create an ssh key: [ssh](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)    
> - how to manage git with github, add shh key to github: [ssh2](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)    
> - good vim blogger: [Vim Blogger](https://www.chrisatmachine.com/)    
> - How to set emoji in alacritty terminal: [alacritty emoji](https://github.com/alacritty/alacritty/issues/153)    
> - add a composite key to have accents with US layout: [US keyboard](https://bbs.archlinux.org/viewtopic.php?id=164150)    
>    - set the compose key in the file /etc/default/keyboard like here [comp](https://askubuntu.com/questions/121474/permanently-change-keyboard-layout)  
>    - or like here [comp](https://www.reddit.com/r/linux4noobs/comments/890gxm/making_the_compose_key_permanent/)


