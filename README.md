# Installation


## Clone git repository
```console
cd ~
git clone https://github.com/rcelotti/dotfiles.git ~/dotfiles
```
note: on windows install git and curl as shown here
https://github.com/gmarik/vundle/wiki/Vundle-for-Windows


## Create symlinks
The bash script "create_links.sh" will create symlinks automatically 
(and backup existing files) but if you prefer to do it manually here 
is what must be linked.

**Symlinks for vim:**
```console
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
```

**Symlinks for tmux:**
```console
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmux/tmux-powerlinerc ~/.tmux-powerlinerc
```

**Symlinks for vim under windows:**
```console
cd %USERPROFILE%
mklink /D .vim dotfiles\vim
mklink /H _vimrc dotfiles\vim\vimrc
```


## Init git submodules
Switch to the "~/dotfiles" directory and update submodules:
```console
cd ~/dotfiles
git submodule init
git submodule update
```


## Update bundles in vim
Start vim and run:
```bash
:PluginInstall
:PluginUpdate
```

or, from command line, run:
```console
vim +PluginInstall +PluginUpdate +qall
```


## Additional (optional) stuff
In .bashrc:
* Put this after your PS1 prompt (needed by some tmux segments):
```bash
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
``` 

* Alias tmux to force 256 colors:
```bash
alias tmux='tmux -2'
``` 

* Alias "vim-less" script:
```bash   
alias vless='/usr/share/vim/vim73/macros/less.sh'
``` 



    
