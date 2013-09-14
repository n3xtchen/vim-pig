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

" My Bundles here:
"
" Bundle 'derekwyatt/vim-scala'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" Bundle 'git://git.wincent.com/command-t.git'
" Bundle 'https://github.com/vim-scripts/perl-support.vim.git'
" Bundle 'https://github.com/altercation/vim-colors-solarized.git'
" Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
" Bundle 'TaskList.vim'

" N3xt Bundles
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'desert-warm-256'
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
" 自动补齐
Bundle 'https://github.com/vim-scripts/cscope.vim'
" python
Bundle 'python.vim'
Bundle 'python_fold'
" pep8 语法检查
Bundle 'nvie/vim-flake8'	
" php
Bundle 'php.vim'
Bundle 'phpfolding.vim'
Bundle 'phpqa'

" phpunit 插件
Bundle 'joonty/vim-phpunitqf.git'
" JS 插件

" 需要 python 支持
if has("python")
    " python 自动补齐
    " Bundle 'davidhalter/jedi-vim'	
    " 状态栏
    Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	
endif"

" tagbar required
if has("ctag")
    if filereadable("tags")
        set tags=tags
    endif
endif

nmap <F8> :TagbarToggle<CR>

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

" flake8
let g:flake8_ignore="E501,W293"
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

" php
" phpunit
"仅检测PHP语法
autocmd FileType php map <silent> <F9> :!php -l %<cr>
" phpunit 命令存放位置
let g:phpunit_cmd = "phpunit"
let g:phpunit_args = "-c phpunit.xml"
" 输出临时目录
let g:phpunit_tmpfile = "/tmp/vim_phpunit.out"

" Set the codesniffer args
let g:phpqa_codesniffer_args = "--standard=Zend"
" PHP executable (default = \"php\")
" let g:phpqa_php_cmd='/path/to/php'
"
" PHP Code Sniffer binary (default = \"phpcs\")
" let g:phpqa_codesniffer_cmd='/path/to/phpcs'
"
" PHP Mess Detector binary (default = \"phpmd\")
" let g:phpqa_messdetector_cmd='/path/to/phpmd'")
 
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 1
 
" Stop the location list opening automatically
let g:phpqa_open_loc = 0
" Clover code coverage XML file
" let g:phpqa_codecoverage_file = \"/path/to/clover.xml\"
" " Show markers for lines that ARE covered by tests (default = 1)
let g:phpqa_codecoverage_showcovered = 0

" powerline required
let g:Powerline_colorscheme = 'tux'
let g:Powerline_symbols = 'fancy'
" set guifont=PowerlineSymbols\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\ 
set laststatus=2	" Always show statusline
set t_Co=256	" Use 256 colours

" Source a global configuration file if available
if filereadable("vimrc")
	source ./vimrc
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
