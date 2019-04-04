"======================================================================
"
" init-plugins.vim - 
"
"======================================================================

" 插件管理加入到runtimepath
set rtp+=~/.vim/bundle/Vundle.vim

" 插件的安装与配置
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'morhetz/gruvbox'
let g:enable_bold_font = 0
let g:hybrid_transparent_background = 1

" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = "hybrid"

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'nathanaelkane/vim-indent-guides'
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

Plugin 'airblade/vim-gitgutter'

Plugin 'majutsushi/tagbar'
noremap <F2> :TagbarToggle<CR> 
let g:tagbar_left=1 
let g:tagbar_width=32 
let g:tagbar_compact=1

Plugin 'scrooloose/nerdtree'
noremap <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=32
let g:NERDTreeWinPos="right"
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeAutoDeleteBuffer=1

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_startofline = 0 

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

" git wrapper
Plugin 'tpope/vim-fugitive'

Plugin 'jiangmiao/auto-pairs'

" 结束插件安装
call vundle#end()

" 主题选择需要放在插件安装之后
colorscheme gruvbox
"colorscheme hybrid_material
"colorscheme hybrid_reverse
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
