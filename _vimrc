
filetype on 

syntax enable

"==========================================
" 字符编码设置
"==========================================

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

"设置TAB为4个空格c
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
set background=dark
"set background=blue
"set t_Co=256




let g:solarized_termcolors=256

colorscheme solarized
"colorscheme molokai
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

"这里还缺少



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




" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Inconsolata:h12
    if has("gui_gtk2")   "GTK2
        set guifont=Inconsolata\ 12,Inconsolata\ 12
    endif
 "   set guioptions-=T
 "   set guioptions+=e
  "  set guioptions-=r
  "  set guioptions-=L
  "  set guitablabel=%M\ %t
    set showtabline=1
    set linespace=2
    set noimd
    set t_Co=256
endif





"airline

let g:airline_theme="dark""

  set rtp+=E:\Vim\vimfiles\Bundle\vim-airline
    set rtp+=E:\Vim\vimfiles\Bundle\vim-airline-themes



 let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let Powerline_symbols='fancy'
let g:bufferline_echo=0
set laststatus=2
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\i 


"let g:airline_theme="solarized"

