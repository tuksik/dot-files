#!/bin/bash

#Initialize submodules
#git submodule init; git submodule update;

curr_dir=`pwd`


#Set up vim
[[ -d $HOME/.vim ]] && mv $HOME/.vim $HOME/.vim-bkp
tar -xvzf vim.tar.gz 
ln -s $curr_dir/.vim $HOME/.vim

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-bkp

ln -s $curr_dir/.vimrc $HOME/.vimrc
ln -s $curr_dir/.muttrc  $HOME/.muttrc
ln -s $curr_dir/.bash_aliases $HOME/.bash_aliases


touch $HOME/.baseline_dotfiles
