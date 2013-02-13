Installation:

    cd ~
    git clone https://github.com/rcelotti/dotfiles.git ~/dotfiles

Create symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim

Switch to the "~/dotfiles" directory, and fetch vundle:

    cd ~/dotfiles
    git clone http://github.com/gmarik/vundle.git ./vim/bundle/vundle

Start vim and run:
    :BundleInstall
or, from command line, run:
    vim +BundleInstall +qall
    
