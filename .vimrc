
" 设置行号
set nu
" 支持中文不乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 突出显示当前行
set cursorcolumn
" 启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"显示括号匹配
set showmatch
" 设置缩进
set tabstop=4			" 设置tab长度为4空格
set softtabstop=4
set shiftwidth=4		" 设置自动缩进长度为4空格
set autoindent			" 设置继承前一行的缩进方式，适用于多行注释
" 设置粘贴模式
set paste
" 显示状态栏和光标的当前位置
set laststatus=2
set ruler
" 打开文件类型检测
filetype plugin indent on
" 关闭vi
set nocp
" 当文件外部改动时自动读取
set autoread
" 高亮光标所在行
set cursorline
"取消光标闪烁
set novisualbell
" 状态栏显示当前执行的命令
set showcmd
" 允许使用退格建
set backspace=2

call plug#begin('~/.vim/plugged')


" vim 树的资源管理器插件
Plug 'scrooloose/nerdtree'
	" 将F0设置为开关Nerdree的快捷键
	map <C-n> :NERDTreeToggle<CR>
	" 修改树的显示图标
	let g:NERDTreeDirArrowExpandable = '+'
	let g:NERDTreeDirArrowCollapsible='-'
	" 窗口位置
	let g:NERDTreeWinPos='left'
	" 窗尺寸
	let g:NERDTreeSize=30
	" 窗口是否显示行号
	let g:NERDTreeShowLineNumbers=1
	" 显示隐藏文件
	let g:NERDTreeHidden=1 	

" 引号和括号的插件
Plug 'tpope/vim-surround'
" 代码补全
"Plug 'valloric/youcompleteme'

" vim文本编辑器的精度颜色方案
Plug 'altercation/vim-colors-solarized'
	" 配色方案
	syntax enable
	set background=dark
	colorscheme solarized

" 异步语法检查
Plug 'dense-analysis/ale'
" 语法突出显示，基本缩进，合成支持
Plug 'udalov/kotlin-vim'
" 自动保存
Plug '907th/vim-auto-save'
" 在标题栏显示函数名称


Plug 'itchyny/lightline.vim'
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

call plug#end()
