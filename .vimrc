 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'SingleCompile'
Bundle 'Tabular'
Bundle 'fugitive.vim' 
Bundle 'snipMate'
Bundle 'snipmate-snippets'
Bundle 'surround.vim'
Bundle 'Syntastic'


filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

"My section 
set number
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
colorscheme evening
imap ff <Esc>
"Bulgarian phonetic
imap фф <Esc>
map и i
"Greek simle
imap φφ <Esc>
map ι i


