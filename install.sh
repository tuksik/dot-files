#!/bin/bash

#Initialize submodules
#git submodule init; git submodule update;

curr_dir=`pwd`


#Set up vim
[[ -d $HOME/.vim ]] && mv $HOME/.vim $HOME/.vim-bkp
#ln -s $curr_dir/vim $HOME/.vim

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-bkp
#ln -s $HOME/.vim/vimrc $HOME/.vimrc
tar -xvzf vim.tar.gz


touch $HOME/.baseline_dotfiles
