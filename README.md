# Dotfiles

Hi to everyone. 
Welcome to my xmonad setup!

## Configuration

|Name              |                                                            |
|------------------|------------------------------------------------------------|
|OS                |[Manjaro](https://manjaro.org/)                             |
|Shell             |[ZSH + ohmyzsh](https://ohmyz.sh/)                          |
|Window Manager    |[Xmonad](https://xmonad.org/)                               |
|Terminal          |[Alacritty](https://github.com/alacritty/alacritty)         |
|Editor            |[Neovim](https://neovim.io/)                                |
|Panel             |[Xmobar](https://xmobar.org/)                               |
|Browser           |[Firefox](https://www.mozilla.org/en-US/firefox/new/)       | 

### Before use neovim with this config

[Coc-vim](https://github.com/neoclide/coc.nvim)

**and see other plugin pages and give a look at the dependencies**

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

use [`dual`](https://github.com/vlnraf/dotfiles/blob/master/.zshrc) or [`single`](https://github.com/vlnraf/dotfiles/blob/master/.zshrc) in the terminal to switch from the single monitor to double monitor or the other way.

### TODO

- I will try to do a bash script to install everything automatically and start the same config in another machine as soon as possible. (When i have a bit of time to work on it 😅)
- Try to switch from dmenu to Rofi app launcher.

### Here are a few screenshots

![Sysinfo](./Pictures/screenshots/2020-11-09_18-03.png?raw=true "System Info")
![Work](./Pictures/screenshots/2020-11-09_14-08.png?raw=true "Work Flow")
![Files](./Pictures/screenshots/2020-11-09_17-18_1.png?raw=true "File Managers")
![Browser](./Pictures/screenshots/2020-11-09_17-23.png?raw=true "Browser")
![Double](./Pictures/screenshots/2020-11-09_17-18.png?raw=true "Double Monitor")

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


A special thanks to [DistroTube](https://distrotube.com/) that give me the opportunity to take his dotfiles as an example.
