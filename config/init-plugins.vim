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
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

Plugin 'airblade/vim-gitgutter'
set updatetime=250

Plugin 'majutsushi/tagbar'
noremap <F2> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 32
let g:tagbar_compact = 1

Plugin 'scrooloose/nerdtree'
noremap <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 32
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

Plugin 'Yggdroot/LeaderF'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'

noremap <leader>mr :<C-u>Leaderf! mru<CR>

noremap <leader><C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s", "")<CR>
noremap <leader>go :<C-U>Leaderf! rg --stayOpen --recall<CR>
noremap <leader>ff :<C-U>Leaderf! function --stayOpen<CR>
noremap <leader>ft :<C-U>Leaderf! bufTag --stayOpen<CR>

noremap <leader><C-N> :<C-U><C-R>=printf("Leaderf! gtags -d %s", "")<CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --stayOpen --recall %s", "")<CR><CR>

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-abolish'

Plugin 'tpope/vim-commentary'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-repeat'

Plugin 'tpope/vim-unimpaired'

Plugin 'kana/vim-textobj-user'

Plugin 'kana/vim-textobj-lastpat'

Plugin 'kana/vim-textobj-entire'

Plugin 'kana/vim-textobj-function'

Plugin 'jiangmiao/auto-pairs'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsEditSplit = "vertical"

Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<TAB>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S=TAB>', '<C-p>', '<Up>']
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
set completeopt-=preview

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
nmap <silent> <F8> <Plug>MarkdownPreview        
imap <silent> <F8> <Plug>MarkdownPreview       
nmap <silent> <F9> <Plug>StopMarkdownPreview  
imap <silent> <F9> <Plug>StopMarkdownPreview

" input switch using im-select
Plugin 'ybian/smartim'
let g:smartim_default = 'com.apple.keylayout.ABC'

" 结束插件安装
call vundle#end()

" 主题选择需要放在插件安装之后
colorscheme gruvbox
"colorscheme hybrid_material
" colorscheme hybrid_reverse
"colorscheme solarized
"colorscheme molokai
"colorscheme phd