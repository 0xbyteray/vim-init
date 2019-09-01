"======================================================================
"
" init-basic.vim - 基础配置
"
"======================================================================

if (has("termguicolors"))
  set termguicolors
endif

" 主题背景 dark / light
" set background=dark
set background=light

" 开启256色支持
set t_Co=256

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 高亮显示搜索结果
set hlsearch

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" macOs下设置回退删除
set backspace=2

" vim 自身命令行模式智能补全
set wildmenu

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable

" 自动缩进
set autoindent

" 打开 C/C++ 语言缩进优化
set cindent

" 切换buffer不需要先保存正在编辑的文件
set hidden

" 关闭自动换行
set nowrap

" 自适应不同语言的智能缩进
filetype plugin indent on

" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 显示匹配的括号
set showmatch

" 显示括号匹配的时间
set matchtime=2

" 显示最后一行
set display=lastline

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
" 或者 Vim 当前目录包含 .tags 文件
set tags=./.tags;,.tags

" 设置find路径
set path+=./**
