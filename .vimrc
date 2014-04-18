set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'
"PHP Coding Standards Fixer
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'SingleCompile'
Bundle 'Tabular'
"Git Wrapper https://github.com/tpope/vim-fugitive
Bundle 'fugitive.vim'
"Bundle 'snipMate'
"Bundle 'snipmate-snippets'
"https://github.com/garbas/vim-snipmate/blob/master/doc/SnipMate.txt
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
"http://www.vim.org/scripts/script.php?script_id=1697
Bundle 'surround.vim'
"https://github.com/scrooloose/syntastic
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'
Bundle 'shawncplus/phpcomplete.vim'
Bundle "mattn/emmet-vim"
Bundle 'The-NERD-tree'
Bundle 'SuperTab'
Bundle 'chrisgillis/vim-bootstrap3-snippets'


"My rows
set number
set ts=4 sw=4
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
colorscheme evening
imap ff <Esc>
"Bulgarian phonetic
imap фф <Esc>
map и i
"Greek simple
imap φφ <Esc>
map ι i
"Snip
:imap <C-J> <Plug>snipMateNextOrTrigger
"Code completion
filetype plugin indent on     " required!
"http://www.belchak.com/2011/01/31/code-completion-for-python-and-django-in-vim/
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"http://stackoverflow.com/questions/1224838/vim-php-omni-completion
au FileType php set omnifunc=phpcomplete#CompletePHP
"inoremap <C-space> <C-X><C-O>
"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"emmet
"let g:user_emmet_leader_key ='<C-Z>' 
let g:use_emmet_complete_tag = 1
imap ,, <C-y>,
