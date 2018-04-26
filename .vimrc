syntax on

set ts=2  " tabstop :  <tab> 간격.
set sts=2  "softtabstop
set sw=2  " shiftwidth :  자동 들여쓰기 간격.

set ai  " autoindent :  자동 들여쓰기.
set ci  " cindent :  C 자동 들여쓰기.
set si  " smartindent :  자동 들여쓰기.(뭐가 다른지는 모르겠음)

set et  " expandtab : <tab> 을 space 로.

set backspace=2  " 삽입 모드에서 backspace 계속 허용한다.

set background=dark  " 화면 배경을 어둡게

set incsearch  " 점진적으로 찾아준다.

set aw  "autowrite :  :next 나 :make 같은 명령으로 자동 저장한다.

set hlsearch  " 검색어 강조 기능
set showmatch  " (), {} 에서 닫는 괄호를 입력할 때 일치하는 괄호 보여줌

set paste  " 붙여넣기시 계단 현상 제거

set title  " 타이틀바에 현재 편집중인 파일을 표시한다.
set ruler  " 상태표시줄에 커서 위치를 보여준다.

set statusline=%h%F%m%r%=[%l:%c(%p%%)]  " 상태표시줄 포맷팅

set guifont=Lucida_Sans_Typewriter:h12:cHANGEUL

"colo default
colo desert

"-----vim show number of line-----
set nu

"-----UTF-8 Change-----

set encoding=UTF-8
set fileencodings=UTF-8

" VIM-LATEX
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

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
