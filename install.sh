#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="zshrc oh-my-zsh vim vimrc"    # list of files/folders to symlink in homedir

##########

if [ -z $1 ]; then

    # create dotfiles_old in homedir
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "...done"

    # change to the dotfiles directory
    echo "Changing to the $dir directory"
    cd $dir
    echo "...done"

    # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
    echo "Moving any existing dotfiles from ~ to $olddir"
    echo "Creating symlink to $file in home directory."
    for file in $files; do
        mv ~/.$file $olddir/
        ln -s $dir/$file ~/.$file
    done
    echo "...done"

elif [ $1 == "rm" ]; then
    echo "Removing symlinks and replacing any dotfile backups"
    for file in $files; do
        rm ~/.$file
        mv $olddir/.$file ~/
    done
    echo "...done"
    exit 0
fi