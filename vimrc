"set nocompatible
filetype plugin indent on

set autoread

let mapleader="_"
let maplocalleader="_"
let g:mapleader="_"

call plug#begin()
"Plug 'altercation/vim-colors-solarized'
"Plug 'lifepillar/vim-solarized8'
Plug 'romainl/flattened'
Plug 'bling/vim-bufferline'
Plug 'clones/vim-genutils'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'kopischke/vim-fetch'
Plug 'mileszs/ack.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/mru.vim'
Plug 'vim-scripts/print_bw.zip'
call plug#end()

syntax enable
syntax sync minlines=20

set background=light
colorscheme flattened_light

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

let g:lightline = { 'colorscheme': 'flattened_light', }
let g:netrw_liststyle=3

let g:sneak#s_next = 1

set backspace=indent,eol,start
set backupdir=~/.vim/.backup//
set complete+=k
set complete-=i
set dictionary+=~/q/qcmds.txt
set directory=~/.vim/.swp//
set encoding=utf-8
set expandtab
set ffs=unix,dos,mac
set foldcolumn=1
set formatoptions=qrn1
set gdefault
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set laststatus=2
set lazyredraw
set matchpairs+=<:>
set matchtime=2
set nobackup
set nojoinspaces
set noswapfile
set nowritebackup
set omnifunc=syntaxcomplete#Complete
set pastetoggle=<F2>
set path+=./**
set printoptions=portrait:n,left:5pc
set relativenumber
set rtp+=/usr/local/opt/fzf
set ruler
set scrolloff=7
set shiftwidth=2
set shortmess=atTI
set showcmd
set showmatch
set showmode
set sidescrolloff=5
set smartcase
set smarttab
set softtabstop=2
set switchbuf=usetab
set tabpagemax=50
set tabstop=2
set tags=./tags;/
set termguicolors
set textwidth=79
"set ttimeout
"set ttimeoutlen=100
"set timeoutlen=0
set ttyfast
set undodir=~/.vim/.undo//
set viminfo+=!
set visualbell
set whichwrap+=<,>,h,l
set wildmenu
set wildmode=list:longest
set wrap

" highlight last inserted text
nnoremap gV `[v`]

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'
au VimEnter * if &diff | execute 'windo set wrap' | endif

" my typos
iab slect select
iab feilds fields
iab feild field
iab seelect select
iab dlte delete
iab teh the

" K shortcuts
iab KQQ		",($),"<ESC>hhi
iab QQQ		",(string),"<ESC>hhi
iab KAND	$[;;0b]<ESC>hhhi
iab KOR		$[;1b;]<ESC>hhhi

function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

set rtp+=/usr/local/opt/fzf
au BufNewFile,BufRead .bash_functions call SetFileTypeSH("bash")

" Customize fzf colors to match your color scheme
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

" Move between open buffers.
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nnoremap <leader>i  gg=G``

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" relative/absolute number toggling
nnoremap <Leader>na :se nornu<CR>:se nu!<CR>
nnoremap <Leader>nr :se nonu<CR>:se rnu!<CR>
" toggle all 3 number settings in a loop
nnoremap <Leader>nnn :set <c-r>={'00':'','01':'r','10':'nor'}[&rnu.&nu]<CR>nu<CR>

