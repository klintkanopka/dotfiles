#!/bin/bash

################################################################################
# install.sh
# ----------
#
# This script creates symlins from home directory to dotfiles in ~/dotfiles
#
################################################################################

# Variables
# ---------

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc gitconfig taskrc i3status.conf"

# Create dotfiles_old in home dir
# -------------------------------

echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to dotfiles directory
# ----------------------------

echo "Changing to $dir directory"
cd $dir
echo "...done"

# Move existing dotfiles in ~/ to dotfiles_old, then create symlinks
# ------------------------------------------------------------------

for file in $files; do
    echo "Moving .$file from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in ~"
    ln -s $dir/$file ~/.$file
done
