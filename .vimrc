set encoding=utf-8
set nocompatible
set clipboard=unnamedplus       " copy to default system clipboard  


""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'lervag/vimtex'

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'junegunn/seoul256.vim'

Plug 'sirVer/ultisnips'
"Plug 'honza/vim-snippets'
call plug#end()

filetype plugin indent on
syntax on

""""""""""""""""""""""""""""""""""""""""
" Appearence
"colorscheme iceberg
"colorscheme elflord

colorscheme seoul256
let g:seoul256_background = 233
colo seoul256
unlet! g:indentLine_color_term g:indentLine_color_gui
hi Conceal ctermbg=233

" line numbers
set number
set relativenumber
highlight LineNr ctermfg=253

let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
""""""""""""""""""""""""""""""""""""""""
"" Whitespace
set wrap linebreak nolist       " wrap long lines
set tabstop=4 shiftwidth=4      " a tab is 4 spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
