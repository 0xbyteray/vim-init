"======================================================================
"
" init-keymaps.vim
"
"======================================================================
" generate tags
noremap <F5> :!ctags -R -f .tags<CR>

" 快速退出
noremap <Leader>q :q<CR>
noremap <Leader>Q :qa<CR>

" 快速保存
noremap <Leader>w :w<CR>

" 复制到系统剪贴板
vnoremap <Leader>y "+y

" 粘贴系统剪贴板
noremap <Leader>p "+p

" 快速添加空格
noremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
noremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" 窗口操作
noremap <tab> <c-w><c-w>

" 取消搜索高亮
noremap <C-l> :nohlsearch<cr>

" 设置 CTRL+HJKL 移动光标
inoremap <C-h> <bs>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

cnoremap <c-h> <bs>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-_> <c-k>

" <leader>+数字键 切换tab
noremap <silent><leader>1 1gt<cr>
noremap <silent><leader>2 2gt<cr>
noremap <silent><leader>3 3gt<cr>
noremap <silent><leader>4 4gt<cr>
noremap <silent><leader>5 5gt<cr>
noremap <silent><leader>6 6gt<cr>
noremap <silent><leader>7 7gt<cr>
noremap <silent><leader>8 8gt<cr>
noremap <silent><leader>9 9gt<cr>
noremap <silent><leader>0 10gt<cr>

" ALT+N 切换 tab
noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>

" buffer区操作
noremap <silent> <leader>bn :bn<cr>
noremap <silent> <leader>bp :bp<cr>

" tab操作
noremap <silent> <leader>tc :tabnew<cr>
noremap <silent> <leader>tq :tabclose<cr>
noremap <silent> <leader>tn :tabnext<cr>
noremap <silent> <leader>tp :tabprev<cr>
noremap <silent> <leader>to :tabonly<cr>
