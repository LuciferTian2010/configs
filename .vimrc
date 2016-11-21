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

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. It
" runs files through external syntax checkers and displays any resulting
" errors to the user. 
Plugin 'vim-syntastic/syntastic'
" Git plugin not hosted on GitHub

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine
" for Vim.
Plugin 'Valloric/YouCompleteMe'

" Solarized Colorscheme for Vim
Plugin 'altercation/vim-colors-solarized'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.n
Plugin 'kien/ctrlp.vim'

" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'

Plugin 'tmhedberg/SimpylFold'

Plugin 'powerline/powerline'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'klen/python-mode'

" A plugin of NERDTree shoing git status
Plugin 'Xuyuanp/nerdtree-git-plugin'
set shell=sh

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

syntax enable

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=80
    \ set expandtab
    \ set autoindent
   \ set fileformat=unix

" Turn on line number on the side of screen
set number

" show the matching part of the pair for {} [] and ()
set showmatch

" show a visual line under the cursor's current line
set cursorline

set incsearch

" highlight mathces
set hlsearch

" enable all Python syntax highlighting features
let python_highlight_all=1

" Settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Automatically load errors into location list
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" Enable errors check when loading a file into Vim
let g:syntastic_check_on_open = 1
" Enable erros check when saving a file
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = '!'
let g:syntastic_python_checkers = ['flake8']

" Set polarized color theme light
set background=dark
colorscheme solarized

" Settings for tab switch
" For mac users (using the 'apple' key)
" map <D-S-]> gt
" map <D-S-[> gT
" map <D-1> 1gt
" map <D-2> 2gt
" map <D-3> 3gt
" map <D-4> 4gt
" map <D-5> 5gt
" map <D-6> 6gt
" map <D-7> 7gt
" map <D-8> 8gt
" map <D-9> 9gt
" map <D-0> :tablast<CR>

" for linux and windows users (using the control key)
" map <C-S-]> gt
" map <C-S-[> gT
" map <C-1> 1gt
" map <C-2> 2gt
" map <C-3> 3gt
" map <C-4> 4gt
" map <C-5> 5gt
" map <C-6> 6gt
" map <C-7> 7gt
" map <C-8> 8gt
" map <C-9> 9gt
" map <C-0> :tablast<CR>


" Setting for Powerline
set t_Co=256
let g:Powerline_symbols = "fancy"
