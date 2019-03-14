set nocompatible              " 去除VI一致性,必须
set fileformat=unix            " 会显示 dos 下的 \r\n 为 ^M
set shiftwidth=2 | set expandtab " 把 tab 键的输入变成空格，并且是 4 个
set nu
syntax on                          " 开启语法高亮
set wildmode=list:longest          " 显示所有匹配的命令
"set fdm=syntax                     " 折叠
set laststatus=2                   " 显示文件名
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files

" 配置 vundle 开始
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dpelle/vim-LanguageTool'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()              
filetype plugin indent on    " 自动检测文件类型并加载插件
" 配置 vundle 结束

" 配置格式化 clang-format 开始 
map <C-K> :pyf ~/.vim/prebuild/clang/llvm/share/clang/clang-format.py<cr>  
" 配置格式化 clang-format 结束

" 配置补全 you_complete_me 开始
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  " 启用默认配置
let g:ycm_confirm_extra_conf = 0  " 关闭重复打开提醒
let g:ycm_python_binary_path = 'python3'  " 使用 python3 作为 python interpreter 
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 配置补全 you_complete_me 结束
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsEditSplit="vertical"

set backupdir-=.
set backupdir^=~/tmp,/tmp
