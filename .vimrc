set encoding=utf-8
set nocompatible
set showcmd                     " display incomplete commands
set clipboard=unnamedplus       " copy to default system clipboard  

set runtimepath^=~/.vim/plugin/slime.vim
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name":"default", "target_pane":"2"}

" colors and theme
" set termguicolors
" colorscheme iceberg
" colorscheme elflord

" splits
nnoremap <C-J> <C-W><C-J>       " Navigate easily 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow                  " open splits more naturally 
set splitright

" line numbers
set number
set relativenumber
highlight LineNr ctermfg=253

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is 2 spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set incsearch                   " incremental searching
set hlsearch                    " highlight matches
"nnoremap <esc> :noh<return><esc>

"" LaTeX snippets

nnoremap ĺc :w<return>:!pdflatex %<return>
nnoremap ĺl :w<return>:!lualatex %<return>

inoremap ĺem \emph{}<Esc>T{i
inoremap ĺbf \textbf{}<Esc>T{i
inoremap ĺit \textit{}<Esc>T{i
inoremap ĺtt \texttt{}<Esc>T{i
"autocmd FileType tex inoremap ;tt \texttt{}<Space>(<>)<Esc>T{i
"
"autocmd FileType tex inoremap ;enum \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter>(<>)<Esc>3kA\item<Space>
"autocmd FileType tex inoremap ;item \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter>(<>)<Esc>3kA\item<Space>
"autocmd FileType tex inoremap ;ref \ref{}<Space>(<>)<Esc>T{i
"autocmd FileType tex inoremap ;cite \cite{}<Space>(<>)<Esc>T{i
"autocmd FileType tex inoremap ;sec \section{}<Enter><Enter>(<>)<Esc>2kf}i
"autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter>(<>)<Esc>2kf}i
"autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter>(<>)<Esc>2kf}i
"
"autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter>(<>)<Enter><Enter>\end{frame}<Enter><Enter>(<>)<Esc>6kf}i
"autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter>(<>)<Enter>\end{column}<Enter>\end{columns}<Esc>5kA
