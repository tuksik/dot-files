set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"PHP Coding Standards Fixer
"Bundle 'stephpy/vim-php-cs-fixer'
"Bundle 'Puppet-Syntax-Highlighting'
"Bundle 'SingleCompile'
"Bundle 'Tabular'

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
"Plugin 'file:///home/codio/dot-files/.vim/bundle/vim-multiple-cursors/plugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"My rows
set number
"set ts=4 sw=4
"set expandtab
"nmap <F9> :SCCompile<cr>
"nmap <F10> :SCCompileRun<cr>
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
" Force using the Django template syntax file
let g:sls_use_jinja_syntax = 0

"https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"PEP8
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ textwidth=79
	\ expandtab
	\ autoindent
	\ fileformat=unix
highlight BadWhitespace guibg=red ctermbg=darkred
au BufNewFile,BufRead *.py
	\ match BadWhitespace /\s\+$/
"Full stack
au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
	\ softtabstop=2
	\ shiftwidth=2
