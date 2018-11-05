:source $HOME\.vimrcbase

let $TMP="c:/temp"


" Fast source
nmap <leader>s :source $MYVIMRC<cr>
" Fast close
nmap <leader>q :q!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme monokai
syntax on
" Enable syntax highlighting
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup
set backupdir=$HOME\.vim\backup

" Set swap file directory
set directory=$HOME\.vim\swap
" set undo directory
set undodir=$HOME\.vim\undo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap "Wrap lines
set linebreak "word wrap

" when lines are wrapped show a < before it, its a space after that needs to be escaped
set showbreak=>\ 


" nnoremap 0 g0 this conflickts with the mapping below in visual studio
nnoremap $ g$
nnoremap ^ g^
" Remap VIM 0 to first non-blank character
"nnoremap 0 ^

" Go to marker exact place instead of just the row
nnoremap ' `


" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set lines=35 columns=150
set ignorecase
set incsearch
set guifont=Consolas:h11:cANSI
set number
set clipboard=unnamed
set numberwidth=5
set scrolloff=2
set backspace=indent,eol,start
" :set smartcase
set relativenumber
set lines=99999
set columns=99999

autocmd BufNewFile,BufRead *.vb set ft=vbnet

filetype indent on
autocmd BufRead,BufWritePre *.html normal gg=G

set showcmd
set mouse=a
set undolevels=1000

" comment in javascript
autocmd Filetype javascript nnoremap <leader>c I//<esc>
" comment in html
autocmd Filetype html nnoremap <leader>c I<!--<esc>A--<esc>
"echo "VIM LOADED! Remeber to use C+P, C+N, C+R"

if exists('g:loaded_camelcasemotion') || (v:version < 700)
    finish
endif
let g:loaded_camelcasemotion = 1
map <C-Left> <C-W>j
map <C-Down> <C-W>k
map <C-Up> <C-W>h
map <C-Right> <C-W>l
