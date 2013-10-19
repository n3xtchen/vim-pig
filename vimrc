" 基础配置
set nocompatible 
" be iMproved
 
" Vim 的内部编码
set encoding=utf-8         

" 设置会退键
set backspace=indent,eol,start

" Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8  

" Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1 

" Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8     

" 显示行号
set nu

" 括号匹配
set showmatch

" 自动对齐
set autoindent

" 根据上面的对齐格式
set smartcase
set smartindent

" 缩进格式
set tabstop=4
set shiftwidth=4

" 文件格式为unix
set fileformat=unix

" 配色方案
colorscheme desert

" required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" N3xt Bundles
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'plasticboy/vim-markdown'

" vimrc 管理工具
Bundle 'Sauce'
" 多种语言语法检查
" Bundle 'Syntastic'
"
" 快速定位
Bundle 'Lokaltog/vim-easymotion'

" 文件树
Bundle 'The-NERD-tree'

" 版本控制
Bundle 'vcscommand.vim'
" git
Bundle 'fugitive.vim'

" 编程通用插件和配置
if filereadable($HOME."/.vim/vim-pig/common-program-vimrc")
    source ~/.vim/vim-pig/common-program-vimrc
endif

" Powerline 定制状态栏
if filereadable($HOME."/.vim/vim-pig/powerline-vimrc")
    source ~/.vim/vim-pig/powerline-vimrc
endif

" choose IDE U need
" PHP IDE
if filereadable($HOME."/.vim/vim-pig/php-vimrc")
    source ~/.vim/vim-pig/php-vimrc
endif
" Python IDE
if filereadable($HOME."/.vim/vim-pig/python-vimrc")
    source ~/.vim/vim-pig/python-vimrc
endif
" Scala IDE
if filereadable($HOME."/.vim/vim-pig/scala-vimrc")
    source ~/.vim/vim-pig/scala-vimrc
endif

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
