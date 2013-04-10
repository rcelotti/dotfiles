======================
    Installation
======================

Clone git repository
----------------------

    cd ~
    git clone https://github.com/rcelotti/dotfiles.git ~/dotfiles



Create symlinks
----------------------
Inside the ~/dotfiles folder you can find the bash script "create_links.sh"
that will create symlinks automatically (and backup existing files) but if 
you prefer to do it manually here is what must be linked.

Symlinks for vim:

    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc

Symlinks for tmux:

    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/tmux/tmux-powerlinerc ~/.tmux-powerlinerc



Init git submodules
----------------------
Switch to the "~/dotfiles" directory, fetch vundle and update submodules:

    cd ~/dotfiles
    git clone http://github.com/gmarik/vundle.git ./vim/bundle/vundle
    git submodule init
    git submodule update



Update bundles in vim
----------------------
Start vim and run:
    :BundleInstall
    :BundleUpdate

or, from command line, run:
    vim +BundleInstall +BundleUpdate +qall



Optional steps
----------------------
Additional (optional) stuff.
In .bashrc:
    1) Put this after your PS1 prompt (needed by some tmux segments)
       PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
    2) Alias tmux to force 256 colors
       alias tmux='tmux -2'
    3) Alias "vim-less" script
       alias vless='/usr/share/vim/vim73/macros/less.sh'

    
