## 关于
旨在将 **Vim** 打造成好用的IDE，(^^;;，不过和 Hadoop Pig 一点关系都没有)，
准备支持 PHP 以及 Python 语言，以及继承其他语言的小插件。

希望能为你带来便利，^_^。

## 快速安装

1. 安装 Vundle：

    `$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

2. 下载配置文件：

    `$ git clone https://github.com/n3xtchen/vim-pig.git ~/.vim/vim-pig/`

3. 配置 VIM（将会覆盖你的之前的配置）：

    `$ cp ~/.vim/vim-pig/vimrc ~/.vimrc`

4. 选择你要支持的语言和组建：

        if filereadable($HOME."/.vim/vim-pig/php-vimrc")
            source ~/.vim/vim-pig/php-vimrc

        endif

        if filereadable($HOME."/.vim/vim-pig/python-vimrc")
            source ~/.vim/vim-pig/python-vimrc
        endif

        if filereadable($HOME."/.vim/vim-pig/scala-vimrc")
            source ~/.vim/vim-pig/php-vimrc
        endif

5. 安装插件：

    代开 vim, 运行 `:BundleInstall` (or vim +BundleInstall +qall for CLI lovers)

## Vim 组建说明

未完待续
