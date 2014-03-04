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

" 格式化高亮
syntax enable

" 使用C缩进
set cindent

" 在缩进和遇到 Tab 键时使用空格替代
set expandtab

" 根据文件类型设置缩进格式
au FileType html,javascript setl shiftwidth=2
au FileType html,javascript setl tabstop=2
au FileType scala,java,python,php,vim setl shiftwidth=4
au FileType scala,java,python,php,vim setl tabstop=4

" 文件格式为unix
set fileformat=unix

" 配色方案
colorscheme desert

" required!
" 打开插件
filetype plugin indent on     

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" N3xt Bundles
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'plasticboy/vim-markdown'

" 快速定位
Bundle 'Lokaltog/vim-easymotion'

" 文件树
Bundle 'The-NERD-tree'

" 远程编辑
Bundle 'netrw.vim'

" 版本控制
Bundle 'vcscommand.vim'

" git
Bundle 'fugitive.vim'

" 成对符号补齐
Bundle 'https://github.com/Raimondi/delimitMate.git'

" 程序解析边栏
Bundle 'Tagbar'
nmap <F8> :TagbarToggle<CR>

" 模版
Bundle 'aperezdc/vim-template'
let g:templates_no_autocmd = 1
let g:email = 'echenwen@gmail.com'
let g:user = 'n3xtchen'
" :Template foo
 
" 需要 python 支持
if has("python")
    " 状态栏
    Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	

    " powerline required
    let g:Powerline_colorscheme = 'tux'
    let g:Powerline_symbols = 'fancy'
    " set guifont=PowerlineSymbols\ for\ Powerline
    set fillchars+=stl:\ ,stlnc:\ 
    set laststatus=2	" Always show statusline
    set t_Co=256	" Use 256 colours
endif"

" 自动补齐
if has("ctag")
    Bundle 'taglist.vim'
    if filereadable("tags")
        set tags=tags
    endif
endif

if has("cscope")
    Bundle 'https://github.com/vim-scripts/cscope.vim'
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

" Powerline 定制状态栏
if filereadable($HOME."/.vim/vim-pig/powerline-vimrc")
    source ~/.vim/vim-pig/powerline-vimrc
endif

" choose IDE U need

" Hadoop Pig
Bundle 'pig.vim'
augroup filetypedetect
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

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
