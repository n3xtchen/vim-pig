" 基础配置
set nocompatible " be iMproved

" Vim 的内部编码
set encoding=utf-8         

" Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8  

" Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8     

" Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1 

" 格式化高亮
syntax enable

" 显示行号
set nu

" 括号匹配
set showmatch

" 在缩进和遇到 Tab 键时使用空格替代
set expandtab

set cindent

" 自动对齐
set autoindent

" 根据上面的对齐格式
set smartindent

set smartcase

" 锁进格式
set tabstop=4
set shiftwidth=4

"根据文件类型设置缩进格式
au FileType html,javascript setl shiftwidth=2
au FileType html,javascript setl tabstop=2
au FileType java,python,php,vim setl shiftwidth=4
au FileType java,python,php,vim setl tabstop=4

" 文件格式为unix
set fileformat=unix

" 配色方案
colorscheme desert

" required!
filetype off 

" required!
" 自动化检查文件类型
filetype plugin indent on     

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
" 快速定位
Bundle 'Lokaltog/vim-easymotion'
" 版本控制
Bundle 'vcscommand.vim'
" git
Bundle 'fugitive.vim'
" 成对符号补齐
Bundle 'https://github.com/Raimondi/delimitMate.git'
" 文件树
Bundle 'The-NERD-tree'

" 程序解析边栏
Bundle 'Tagbar'
Bundle 'taglist.vim'
" tagbar required
if has("ctag")
    if filereadable("tags")
        set tags=tags
    endif
endif

nmap <F8> :TagbarToggle<CR>

" 自动补齐
Bundle 'https://github.com/vim-scripts/cscope.vim'

" cscope required
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

" 需要 python 支持
if has("python")
    " 状态栏
    Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	
endif"

" powerline required
let g:Powerline_colorscheme = 'tux'
let g:Powerline_symbols = 'fancy'
" set guifont=PowerlineSymbols\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\ 
set laststatus=2	" Always show statusline
set t_Co=256	" Use 256 colours

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
