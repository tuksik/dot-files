set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'SingleCompile'
Bundle 'Tabular'
"Git Wrapper https://github.com/tpope/vim-fugitive
Bundle 'fugitive.vim'
"Bundle 'snipMate'
Bundle 'snipmate-snippets'
Bundle 'surround.vim'
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'
Bundle 'shawncplus/phpcomplete.vim'
Bundle "mattn/emmet-vim"
Bundle 'The-NERD-tree'


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
"Code completion
filetype plugin indent on     " required!
"http://www.belchak.com/2011/01/31/code-completion-for-python-and-django-in-vim/
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"http://stackoverflow.com/questions/1224838/vim-php-omni-completion
au FileType php set omnifunc=phpcomplete#CompletePHP
inoremap <C-space> <C-X><C-O>
"function! SuperCleverTab()
"if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
	"return "\"
"else
	"if &omnifunc != ''
		"return "\\"
	"elseif &dictionary != ''
		"return "\"
	"else
		"return "\"
	"endif
"endif
"endfunction

"inoremap <Tab> <C-R>=SuperCleverTab()<cr>	 
" My Bundles here:
 "
 " original repos on github
 "Bundle 'tpope/vim-fugitive'
 "Bundle 'Lokaltog/vim-easymotion'
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 "Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 "Bundle 'L9'
 "Bundle 'FuzzyFinder'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 "Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
