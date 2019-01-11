#!/bin/bash

apt-get update && apt-get -y install git bash-completion vim  mc curl tmux
#Initialize submodules
#git submodule init; git submodule update;

curr_dir=$HOME/dot-files


#Set up vim
[[ -d $HOME/.vim ]] && mv $HOME/.vim $HOME/.vim-bkp
tar -xvzf $curr_dir/vim.tar.gz 
ln -s $curr_dir/.vim $HOME/.vim

[[ -f $HOME/.vimrc ]] && mv $HOME/.vimrc $HOME/.vimrc-bkp
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s $curr_dir/.vimrc $HOME/.vimrc
ln -s $curr_dir/.muttrc  $HOME/.muttrc
ln -s $curr_dir/.bash_aliases $HOME/.bash_aliases
ln -s $curr_dir/.tmux.conf  $HOME/.tmux.conf


touch $HOME/.baseline_dotfiles
#Fix git prompt
#curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
#echo 'source ~/.git-prompt.sh' >> ~/.bashrc                                                                                                          
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git

if [ -n "$(getent passwd codio)" ]; then                                                                                                             
    echo " codio exists"                                                                                                                              
    echo 'source ~/.bash_aliases' >> ~/.bashrc                                                                                                   
else                                                                                                                                                 
    echo " codio DO NOT exist"                                                                                                                    
fi                                                                                                                                                   
. ~/.bashrc
