syntax on

" Expand tab to 2 spaces
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab

set ai  " autoindent :  자동 들여쓰기.
set ci  " cindent :  C 자동 들여쓰기.
set si  " smartindent :  자동 들여쓰기.(뭐가 다른지는 모르겠음)

set backspace=2  " 삽입 모드에서 backspace 계속 허용한다.

set background=dark  " 화면 배경을 어둡게

set incsearch  " 점진적으로 찾아준다.

set aw  "autowrite :  :next 나 :make 같은 명령으로 자동 저장한다.

set hlsearch  " 검색어 강조 기능
set showmatch  " (), {} 에서 닫는 괄호를 입력할 때 일치하는 괄호 보여줌

set paste  " 붙여넣기시 계단 현상 제거

set title  " 타이틀바에 현재 편집중인 파일을 표시한다.
set ruler  " 상태표시줄에 커서 위치를 보여준다.

colo desert

"-----vim show number of line-----
set nu

"-----UTF-8 Change-----
set encoding=UTF-8
set fileencodings=UTF-8

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vimawesome ranking order
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'

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
