set nocompatible               " be iMproved  
set ignorecase 
set t_Co=256 
"初始变量声明
set shell=/bin/bash
let mapleader=","

"设置插件管理
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle.vim
filetype off               
set rtp+=~/.vim/bundle/vundle.vim 
call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/syntastic'  
"Bundle 'altercation/vim-colors-solarized'  
Bundle 'scrooloose/nerdtree'  
Bundle 'yegappan/mru'  
Bundle 'Lokaltog/vim-powerline'  
Bundle 'ervandew/supertab'  
Bundle 'jsbeautify'  
Bundle 'dyng/ctrlsf.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle '75426585/ji.vim'
Bundle '75426585/publisher'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'othree/html5.vim'
call vundle#end()            " required
filetype plugin indent on

"设置工作目录
cd $HOME/www
let $VIMFILES=$HOME.'/temp/'
" 设置主题
syntax enable
colorscheme  ji
set guifont=Monaco:h13,Microsoft\ YaHei:h13,Hiragino\ Sans\ GB:h13,
"set guifont=Microsoft\ YaHei:h13

"设置NerdTree

let NERDChristmasTree=1" 类似圣诞树的显示方式
let NERDTreeAutoCenter=1" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeBookmarksFile=$VIMFILES.'NERDTree_bookmarks'" 指定书签文件
let NERDTreeMouseMode=2" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeShowBookmarks=1" 是否默认显示书签列表
let NERDTreeShowFiles=1" 是否默认显示文件
let NERDTreeShowHidden=0" 是否默认显示隐藏文件
let NERDTreeDirArrows='#'" 是否默认显示隐藏文件
let NERDTreeShowLineNumbers=0" 是否默认显示行号
let NERDTreeWinPos='right'" 窗口位置（'left' or 'right'）
let NERDTreeWinSize=30" 窗口宽度
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen = 0" 当通过NERD Tree打开文件自动退出NERDTree界面
let NERDTreeIgnore=['\.exe$','\.gif$','\.png$','\.jpeg$','\.swf$','\.ttc$','^CVS$','^SVN$','^.jpg$','^.bmp$','^.doc$','^.xlsx$']
let g:NERDTreeChDirMode = 2"于ctrlp配置

nmap q <esc>:NERDTreeToggle<cr>

"文档注释
let g:DoxygenToolkit_authorName="jishuai,75426585@qq.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_licenseTag="My own license"

"记录历史文件

let MRU_File=$VIMFILES.'mru_files.txt' 

let MRU_Max_Entries = 900

let MRU_Add_Menu = 0

"nmap f <esc>:MRU<cr>
nmap <leader>a :MRU<cr>

"自动补全函数

let g:SuperTabRetainCompletionType=2

let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"不生成交换文件

set nobackup 

set nowritebackup 

set noswapfile

"显示行号

set nu

"搜索高亮
set hlsearch 

"插入模式时是红色
au InsertLeave * hi Cursor guibg=red
"离开插入模式时是绿色
au InsertEnter * hi Cursor guibg=green

"设置快捷键
noremap zz <esc>:w<cr>
nmap <tab> V<

"设置缩进
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set autoindent
:set cindent
"tab自动转换为空格
:set expandtab

"格式化代码
:filetype indent on  
:set filetype=html
:set smartindent

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"自动补全括号

"ctrlSF 配置
let g:ctrlsf_ackprg = 'ag'
noremap <C-f> :CtrlSF 
nmap <F3> <ESC>:CtrlSF <c-r><c-w><CR> 
nmap <F4> <Esc>:CtrlSFToggle<CR>

"设置函数注释
map <F2> call AddTitle()<cr>'s
function AddTitle()
	call append(line("."),"    /**")
	call append(line(".")+1," 	* Description : ")
	call append(line(".")+2," 	* Author      : jishuai")
	call append(line(".")+3," 	* Created Time: ".strftime("%Y-%m-%d %H:%M"))
	call append(line(".")+4,"	*/")
endfunction

"调试快捷键（var_dump）
imap <F6> var_dump($);exit;<left><left><left><left><left><left><left>
"打印上传数据库的查询
imap <F7> echo $this->db->last_query();exit;

"ctrlp配置
let g:ctrlp_working_path_mode = 'rw'

"语法检查设置
"let g:checksyntax_auto = 1 " 不自动检查

let g:syntastic_check_on_open = 1  "打开文件后是否直接检查错误

let g:syntastic_error_symbol = 'x' "错误字符 

let g:syntastic_warning_symbol = '!' "警告字符

let g:syntastic_auto_loc_list = 0 "是否自动显示错误提醒详情

let g:syntastic_loc_list_height = 1 "警告详情列表高度

let g:syntastic_enable_highlighting = 0

let g:syntastic_php_checkers = ['php']

let g:syntastic_enable_php_checker = 1

"设置pwoer-line"
set laststatus=2
set encoding=utf-8
set termencoding=utf-8 
set fileencoding=utf-8 
set fileencodings=ucs-bom,utf-8,chinese,cp936
set guifont=PowerlineSymbols\ for\ Powerline
let g:Powerline_symbols = 'fancy'

"自动补全函数
let g:SuperTabRetainCompletionType=3
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
:set pastetoggle=<F11>  

"html5配置
let g:html5_event_handler_attributes_complete = 0
