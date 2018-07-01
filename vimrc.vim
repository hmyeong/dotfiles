" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

" Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim
  call vundle#begin('$USERPROFILE/vimfiles/bundle')
else
  set rtp+=$HOME/.vim/bundle/Vundle.vim
  call vundle#begin()
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vimawesome ranking order
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Minimal vimrc
filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =2         " Tab key indents by 4 spaces.
set shiftwidth  =2         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

"set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set nolist                 " Do not show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'eol:$,tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'eol:$,tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
if has('win32')
  set backup
  set backupdir   =$HOME/vimfiles/files/backup/
  set backupext   =-vimbackup
  set backupskip  =
  set directory   =$HOME/vimfiles/files/swap/
  set updatecount =100
  set undofile
  set undodir     =$HOME/vimfiles/files/undo/
  set viminfo     ='100,n$HOME/vimfiles/files/info/viminfo
else
  set backup
  set backupdir   =$HOME/.vim/files/backup/
  set backupext   =-vimbackup
  set backupskip  =
  set directory   =$HOME/.vim/files/swap/
  set updatecount =100
  set undofile
  set undodir     =$HOME/.vim/files/undo/
  set viminfo     ='100,n$HOME/.vim/files/info/viminfo
endif

" Heesoo
colo desert                " colorscheme

set number                 " Precede each line with its line number

if has('win32')
  set encoding=korea
else
  set encoding=UTF-8
endif

set fileencodings=UTF-8

set guifont=Lucida_Sans_Typewriter:h12:cHANGEUL

