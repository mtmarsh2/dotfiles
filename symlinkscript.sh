#!/bin/bash
#############
# .make.sh
# Makes symlinks for all files listed in this directory to the home directory
#############


############ Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc vim zshrc"

###########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#change to dotfiles directory
echo "Changing dir to $dir directory"
cd $dir
echo "..done"

#move any exiting dotfiles in homedir to dotfiles_old directory, then create symlinks

for file in $files; do
    echo "Moving any existing dotfiles to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlinks to $file in home dir"
    ln -s $dir/$file ~/.$file
done
