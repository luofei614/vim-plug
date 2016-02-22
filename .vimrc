call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
" Plugin options
Plug 'nsf/gocode', { 'rtp': 'vim' }

Plug 'https://github.com/luofei614/vim-plug', { 'dir':'~/.vim/my'}

Plug 'AutoComplPop'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Tagbar'
"Bundle 'minibufexpl.vim'

"zencoding 改名为了 Emmet
Plug 'https://github.com/luofei614/Emmet.vim'

Plug 'L9'

"Plug 'FuzzyFinder'
"快速浏览文件，FuzzyFinder 也能快速浏览文件， 但是如果项目文件多会很慢
"如果系统升级可以需要运行 gem update --system, do中的命令可能需要手动运行 
"Plug 'Command-T',{'do': 'cd ./ruby/command-t/; ruby extconf.rb ; make'} 


" Plugin outside ~/.vim/plugged with post-update hook
" 下面这个插件可取代Command-T 但是现在暂时不支持目录忽略，所以先暂时不用
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'WebAPI.vim'

Plug 'Gist.vim'

Plug 'molokai'

Plug 'Solarized'

Plug 'PDV--phpDocumentor-for-Vim'

"Plug 'https://github.com/luofei614/html5css3.git'

"bookmark  mm 添加书签,  mn 移动书签  mp 移动到前一个书签  ma 删除所有书签
Plug 'MattesGroeger/vim-bookmarks'


"Bundle 'JavaScript-syntax'
Plug 'pangloss/vim-javascript'

" jquery , angularjs 等语法
Plug 'https://github.com/othree/javascript-libraries-syntax.vim.git'


Plug 'Mark'
"css私有前缀
Plug 'prefixer.vim'
"能缩减HTML代码
Plug 'xml.vim'
"安装此插件解决macvim下没有加号寄存器的问题。
Plug 'https://github.com/kana/vim-fakeclip.git'

Plug 'https://github.com/terryma/vim-multiple-cursors.git'

"html5插件
Plug 'othree/html5.vim'

"snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'https://github.com/bonsaiben/bootstrap-snippets.git'

Plug 'phpunit'

"快速跳转到字符
Plug 'EasyMotion'

Plug 'https://github.com/bling/vim-airline.git'

Plug 'https://github.com/luofei614/vim-golang.git'

Plug 'https://github.com/burnettk/vim-angular.git'

"检查程序语法错误
Plug 'https://github.com/scrooloose/syntastic.git'

Plug 'https://github.com/vim-scripts/cab.vim.git'

call plug#end()


"vimgrep查询时排除composer的vendor目录,排除前端bower和node的包文件目录,CommandT也不会查到他们
set wildignore=vendor/**


let g:used_javascript_libs = 'jQuery,AngularJS,AngularUI,RequireJS'

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"php只做语法检查
let g:syntastic_php_checkers = ['php']

"autocomplpop 设置

let g:AutoComplPop_IgnoreCaseOption=1

set ignorecase

let g:acp_behaviorKeywordCommand="\<C-n>"

"搜索高亮

set hlsearch

"设置NERDTreetagbar的宽度

let g:NERDTreeWinSize = 20
let g:tagbar_width=20

"颜色主题设置

set t_Co=256

let g:solarized_termcolors=16
"两种流行风格的主题
colorscheme molokai
set background=dark
"colorscheme solarized
"set background=light

"emmet 设置

let g:user_emmet_expandabbr_key = '<C-Y>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {"lang":"zh-cn"}

"Gist设置

let g:gist_detect_filetype = 1

let g:gist_clip_command = 'xclip -selection clipboard'
"javascript
let b:javascript_fold=1
let javascript_enable_domhtmlcss=1

"php函数自动提示

autocmd FileType php set complete+=k | set dictionary=~/.vim/my/extend/phpclist.txt

"javascript自动提示，包括了jquery
autocmd FileType javascript set dictionary=~/.vim/my/extend/javascript.dict
autocmd FileType html set dictionary=~/.vim/my/extend/html.dict

"查找手册

autocmd FileType php set keywordprg=~/.vim/my/extend/phpman

autocmd FileType javascript,html set keywordprg=~/.vim/my/extend/man

autocmd FileType css set keywordprg=~/.vim/my/extend/cssman

inoremap <C-D> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-D> :call PhpDocSingle()<CR> 
vnoremap <C-D> :call PhpDocRange()<CR> 

map <F2> <S-K><CR>

map! <F2> <C-O><S-K><CR>


map <F6> :! tab vim<CR><CR>
map! <F6> <Esc>:! tab vim<CR><CR>

"删除不剪切, rd

nnoremap r "_d
vnoremap r "_d

"快速生成tag文件

map <F3> :! ctags -R<CR>

map! <F3> <Esc>:! ctags -R<CR>

"快捷键设置

map <F11> :NERDTreeToggle<CR>

map! <F11> <Esc>:NERDTreeToggle<CR>

map <F12> :TagbarToggle<CR>

map! <F12> <Esc>:TagbarToggle<CR>

"快速查找文件

"map <C-P> :CommandT<CR>
"map! <C-P> <Esc>:w<CR>:CommandT<CR>

"文件新tab页打开, CommandT插件配置
let g:CommandTAcceptSelectionMap = '<space>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" 用FZF 查找文件 
" 设置查找时排除的目录
:let $FZF_DEFAULT_COMMAND  = 'find . -type f ! -path "./node_modules/*" ! -path "./bower_components/*" ! -path "./.git/*" ! -path "*.swp"'
map <C-P> :tabnew<CR>:FZF<CR>
map!<C-P> <ESc>:w<CR> :tabnew<CR>:FZF<CR>



"快速对齐
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

"快速查找文函数

map <C-F> :FufTag<CR>

map! <C-F> <Esc>:w<CR>:FufTag<CR>

"快速关闭

map <S-Q> :qa<CR>

nnoremap <c-]> g<c-]>

vnoremap <c-]> g<c-]>

"映射复制、粘贴、剪贴ctrl+c ctrl+v ctrl+x

map <C-V> "+pa<Esc>



map! <C-V> <Esc>"+pa

map <C-C> "+y

map <C-X> "+x

" 映射全选 ctrl+a

map <C-A> ggVG

map! <C-A> <Esc>ggVG

"ctrl+s为保存

map <C-S> :w<CR>
inoremap <C-S> <C-O>:w<CR>

"ctrl+z撤销

map <C-Z> :u<CR>

map! <C-Z> <C-O>:u<CR>

"双击时高亮

map <2-leftmouse> \m
inoremap <2-leftmouse> <Esc>\m

"ctrl+鼠标左键跳转

"--------------------
" Function: Open tag under cursor in new tab
" Source:   http://stackoverflow.com/questions/563616/vimctags-tips-and-tricks
"--------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"--------------------
" Function: Remap keys to make it more similar to firefox tab functionality
" Purpose:  Because I am familiar with firefox tab functionality
" 切换tab页 用gt
"--------------------
map     <C-T>       :tabnew<CR>

map <A-LeftMouse> <C-]>

map! <A-LeftMouse> <Esc><C-]>

 

function! InsertTabWrapper()

let col=col('.')-1

if !col || getline('.')[col-1] !~ '\k'

return "\<TAB>"

else

return "\<C-x>\<C-o>"

endif

endfunction

"按tab键，全能提示，

"注意要用inoremap，不能用map！，如果用map！在命令模式下tab键没有提示功能。

inoremap <TAB> <C-R>=InsertTabWrapper()<CR>
"shift+tab 展开代码片段
imap <S-TAB> <Plug>snipMateNextOrTrigger

"在mac下iterm终端标题中中显示文件名称
autocmd BufEnter *.* exe 'silent ! echo -ne "\033];%:t\007"'

"支持鼠标

set mouse=a


" 多行缩进

vnoremap <Tab> >

vnoremap <S-Tab> <

"用数字切换tab页面
noremap  1 1gt
noremap  2 2gt
noremap  3 3gt
noremap  4 4gt
noremap  5 5gt
noremap  6 6gt
noremap  7 7gt
noremap  8 8gt
noremap  9 9gt
noremap  0 :tablast<CR>
"MAC 下 C-left 和 C-Right是切换屏幕， 所以可能下面两句不会生效
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>


"语法高亮
syntax enable
syntax on
set autoindent
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"加快速度
"set synmaxcol=200
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set scrolljump=5
"删除键
set backspace=eol,start,indent

"基本设置

set encoding=utf-8

set fileencoding=utf-8

set fileencodings=ucs-bom,utf-8,chinese

set ambiwidth=double

set wrap "自动换行

"设置无备份

set nobackup

set nowritebackup

