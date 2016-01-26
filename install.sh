#!/bin/bash

#Initialize submodules
#git submodule init; git submodule update;

curr_dir=$HOME/dot-files


#Set up vim
[[ -d $HOME/.vim ]] && mv $HOME/.vim $HOME/.vim-bkp
tar -xvzf $curr_dir/vim.tar.gz 
ln -s $curr_dir/.vim $HOME/.vim

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-bkp

ln -s $curr_dir/.vimrc $HOME/.vimrc
ln -s $curr_dir/.muttrc  $HOME/.muttrc
ln -s $curr_dir/.bash_aliases $HOME/.bash_aliases
ln -s $curr_dir/.tmux.conf  $HOME/.tmux.conf


touch $HOME/.baseline_dotfiles
apt-get update && apt-get -y install bash-completion vim  mc curl tmux
#Fix git prompt
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
echo 'source ~/.git-prompt.sh' >> ~/.bashrc                                                                                                          
if [ -n "$(getent passwd codio)" ]; then                                                                                                             
    echo " codio exists"                                                                                                                              
    echo 'source ~/.bash_aliases' >> ~/.bashrc                                                                                                   
else                                                                                                                                                 
    echo " codio DO NOT exist"                                                                                                                    
fi                                                                                                                                                   
. ~/.bashrc
