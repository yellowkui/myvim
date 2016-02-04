
"#########下面为vundel#############

filetype off  

" 此处规定Vundle的路径  

set rtp+=$VIM/vimfiles/bundle/vundle/  

call vundle#rc('$VIM/vimfiles/bundle/')  

Bundle 'gmarik/vundle'  

filetype plugin indent on  

" original repos on github  

Bundle 'mattn/zencoding-vim'  

Bundle 'drmingdrmer/xptemplate'  

" vim-scripts repos  

Bundle 'vim-markdown'  

filetype plugin indent on " required!!




set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set encoding=utf-8 
set termencoding=utf-8 
set fileencoding=utf-8 
set fileencodings=ucs-bom,utf-8,chinese,cp936

source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim 

language messages zh_CN.utf-8


au BufRead *.py map <buffer> <F5> :w<CR>:! python % <CR>

"设置TAB为4个空格,python必备
set ts=4  
set expandtab

"==========================================
" 其它设置
"==========================================
" vimrc文件修改之后自动加载, windows
autocmd! bufwritepost _vimrc source %


"==========================================
" 主题设置
"==========================================
" theme主题
"set background=dark
"set background=blue
set t_Co=256


colorscheme solarized
" colorscheme molokai
" colorscheme desert



" 按退格键时可以一次删掉 4 个空格
set softtabstop=4


"启用行号
set nu

" 突出显示当前行
set cursorline

" 显示当前的行号列号
set ruler

" 在状态栏显示正在输入的命令
set showcmd

" 左下角显示当前vim模式
set showmode

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7








"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"     let cmd = '""' . $VIMRUNTIME . '\diff"'      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction


