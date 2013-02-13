Installation:

    cd ~
    git clone https://github.com/rcelotti/dotfiles.git ~/dotfiles

Create symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/dotfiles
    git submodule init
    git submodule update


To add submodule:
    cd ~/dotfiles
    git submodule add https://github.com/godlygeek/tabular.git vim/bundle/vim-tabular
    git add .
    git commit -m "Added tabular submodule"

Upgrading a plugin bundle:
    
    cd ~/.vim/bundle/fugitive
    git pull origin master

Upgrading all submodules

    
    cd ~/dotfiles
    git submodule foreach git pull origin master

