"======================================================================
"
" init-plugins.vim
"
"======================================================================

" 插件管理加入到runtimepath
set rtp+=~/.vim/bundle/Vundle.vim

" 插件的安装与配置
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 主题
Plugin 'joshdick/onedark.vim'

" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = "hybrid"

Plugin 'majutsushi/tagbar'
noremap <F2> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 32
let g:tagbar_compact = 1

Plugin 'scrooloose/nerdtree'
noremap <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 32
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-abolish'

Plugin 'tpope/vim-commentary'

Plugin 'airblade/vim-gitgutter'
set updatetime=250

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-unimpaired'

Plugin 'kana/vim-textobj-user'

Plugin 'kana/vim-textobj-lastpat'

Plugin 'kana/vim-textobj-entire'

Plugin 'kana/vim-textobj-function'

Plugin 'jiangmiao/auto-pairs'

Plugin 'honza/vim-snippets'

Plugin 'Yggdroot/LeaderF'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'

noremap <leader>fm :<C-U>Leaderf! mru<CR>
noremap <leader>ff :<C-U>Leaderf! function --stayOpen<CR>
noremap <leader>ft :<C-U>Leaderf! bufTag --stayOpen<CR>
noremap <leader>fb :<C-U>Leaderf! buffer --stayOpen<CR>

noremap <leader><C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s", "")<CR>
noremap <leader>go :<C-U>Leaderf! rg --stayOpen --recall<CR>

noremap <leader><C-N> :<C-U><C-R>=printf("Leaderf! gtags -d %s", "")<CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --stayOpen --recall %s", "")<CR><CR>

" 结束插件安装
call vundle#end()

" 主题选择需要放在插件安装之后
colorscheme onedark
