:syntax on
set number
set colorcolumn=120
set backspace=indent,eol,start
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent


:checktime                    " When a file has been detected to have been changed outside of Vim 
                              " and it has not been changed inside of Vim, automatically read it again.
                              " When the file has been deleted this is not done.
 
 set autoread                  " To do automatically load changes
 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'prettier/vim-prettier'
Plugin 'preservim/nerdtree'
Plugin 'vim-vdebug/vdebug'
Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-fugitive'
"Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'universal-ctags/ctags'

" Color and Theme 
Plugin 'nlknguyen/papercolor-theme'
Plugin 'blueshirts/darcula'

" GraphQl
Plugin 'jparise/vim-graphql'
" Parenthesis, accolade,xml surround
Plugin 'tpope/vim-surround'

" Plugin only for PHP development
" See documentation at https://github.com/arnaud-lb/vim-php-namespace
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'lepture/vim-jinja' " Twig
Plugin 'othree/html5.vim'

" All Language snippets
Plugin 'sheerun/vim-polyglot'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}'arnaud-lb/vim-php-namespace'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" NERDTree Configuration 
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=42

" Powerline Configuration
set  rtp+=/usr/local/lib/python3.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" CTags Configuration
set tags+=tags,tags.vendors

" Tab shortcuts
nnoremap th  :tabfirst<CR>   
nnoremap tk  :tabnext<CR>                   
nnoremap tj  :tabprev<CR>                   
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>


" PHP configuration 
"sql completion in PHP
let php_sql_query=1   
" Html completion in PHP                                                                                     
let php_htmlInStrings=1

let g:php_namespace_sort_after_insert = 1


function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

syntax enable
set background=dark
colorscheme darcula
