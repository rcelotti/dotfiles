#!/bin/bash                           


function printError {
    echo -e "\e[1;31mERROR:\e[1;0m "$1
}

function backupFile {
    filename="$1"
    if [[ -e "${filename}" ]]; then
        num=1
        filename_bak="${filename}.${num}.bak"
        while [[ -f "${filename_bak}" ]]; do
            num=$(expr ${num} + 1)
            filename_bak="${filename}.${num}.bak"
        done
        echo -n "-> move \"${filename}\" to \"${filename_bak}\" ... "
        mv "${filename}" "${filename_bak}" || { printError "Cannot move \"${filename}\" to \"${filename_bak}\". Script aborted."; exit 1; }
        echo "done!"
    fi
}

function createLink {
    DESC="${1}"
    SOURCE="${2}"
    TARGET="${3}"
    echo "Step: ${DESC}"
    read -p "Create soft link \"${SOURCE}\" => \"${TARGET}\" [y/n]? " -n 1 -r
    #read -p "Are you sure? " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        backupFile ${SOURCE} || exit 1;
        echo -n "-> create soft link \"${SOURCE}\" => \"${TARGET}\" ... " 
        ln -s "${TARGET}" "${SOURCE}" || { printError "Cannot create soft link \"${SOURCE}\" => \"${TARGET}\". Script aborted."; exit 1; }
        echo "done!"
    else
        echo "skipped!"
    fi
    echo ""
}

echo "==============================================="
echo "This script will create needed symlinks in your"
echo "home folder \"${HOME}\""
echo ""
echo "For every link created a .bak file will also be"
echo "created if the link/file already exists."
echo "==============================================="
echo ""

echo -n "cd to \"${HOME}\" ... "
cd "${HOME}" || { printError "Cannot switch to home folder ${HOME}. Script aborted."; exit 1; }
echo "done!"
echo ""

createLink "vim folder" ".vim" "dotfiles/vim" || exit 1;
createLink "vim configuration file." ".vimrc" "dotfiles/vim/vimrc" || exit 1;
createLink "gvim configuration file." ".gvimrc" "dotfiles/vim/gvimrc" || exit 1;
createLink "jshint configuration file." ".jshintrc" "dotfiles/vim/jshintrc" || exit 1;

createLink "tmux configuration file." ".tmux.conf" "dotfiles/tmux/tmux.conf" || exit 1;
createLink "tmux-powerlinerc configuration file." ".tmux-powerlinerc" "dotfiles/tmux/tmux-powerlinerc" || exit 1;


    
