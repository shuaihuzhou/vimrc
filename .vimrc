set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'ctrlpvim/ctrlp.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"set encoding=utf-8
"set termencoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8,cp936,gb2312,gbk,gb18030
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_extra_conf_globlist=['~/.vim/bundle/YouCompleteme/third_party/ycmd/cpp/ycm/*','~/.ycm_extra_conf.py']
let g:ycm_python_binary_path='/usr/bin/python'
let g:ycm_keep_logfiles=1
let g:ycm_log_level='debug'
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_max_num_identifier_candidates = 20
let g:ycm_auto_trigger=1
let g:ycm_filetype_whitelist={'*': 1}
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_server_use_vim_stdout=1
let g:ycm_server_log_level=1
let g:ycm_key_invoke_completion='<C-a>'
let g:ycm_auto_trigger=1
let g:ycm_filepath_completion_use_working_dir=1
let g:ycm_omnifunc=0
let g:ycm_use_ultisnips_complete=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting = 0

" " configure the nerdtree
" autocmd vimenter * NERDTree

" auto complete the brankets
imap ( ()<Left>
imap [ []<Left>
imap { {}<Left>

" add the path of jumping between files c++ "gf jump to the file and <c - O>
" jump back
set path=/usr/include/c++/4.8.5/**,/usr/include/**,./,../,/Users/zhoushuaihu/work/sourceCode/nginx-1.12.2/src/**
set tags=/Users/zhoushuaihu/work/sourceCode/tags,,/Users/zhoushuaihu/work/baidu/tags
set autochdir

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" for variables jumping
" set tags=/usr/tags
:set nu
:set shiftwidth=4
:set ts=4
:set expandtab
:set autoindent
:set backspace=indent,eol,start
:syntax on
:set completeopt-=preview
:set hlsearch
:set showmode
:set fileencodings=utf-8,cp936
:set termencoding=utf-8
:set encoding=utf-8
:set cursorline
":set cursorcolumn
:set laststatus=2
:set ruler
