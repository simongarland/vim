set nocompatible
filetype indent on
filetype plugin on

set autoread

let mapleader = "_"
let g:mapleader = "_"

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" bundles
NeoBundle "ajh17/Spacegray.vim"
NeoBundle "altercation/vim-colors-solarized"
NeoBundle "bling/vim-airline"
NeoBundle "bling/vim-bufferline"
NeoBundle "chrisbra/csv.vim"
NeoBundle "clones/vim-genutils"
NeoBundle "croaker/mustang-vim"
NeoBundle "ervandew/supertab"
NeoBundle "fatih/molokai"
NeoBundle "fatih/vim-go"
NeoBundle "jlanzarotta/bufexplorer"
NeoBundle "jnurmine/Zenburn"
NeoBundle "jonathanfilip/vim-lucius"
NeoBundle "justinmk/vim-sneak"
NeoBundle "luochen1990/rainbow"
NeoBundle "mileszs/ack.vim"
NeoBundle "nice/sweater"
NeoBundle "noahfrederick/Hemisu"
NeoBundle "rizzatti/dash.vim"
NeoBundle "tpope/vim-surround"
NeoBundle "vim-scripts/mru.vim"
" individual vimscripts
NeoBundle "Mark"
NeoBundle "SelectBuf"
call neobundle#end()
" Installation check.
NeoBundleCheck

syntax enable 

try
    colorscheme spacegray
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#csv#enabled = 1
let g:airline_theme='wombat'

set autoindent
set backspace=indent,eol,start
set complete+=k
set copyindent
set dictionary+=~/q/qcmds.txt
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
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
set nobackup
set nojoinspaces
set noswapfile
set nowritebackup
set pastetoggle=<F2>
set path+=./**
set printoptions=portrait:n,left:5pc
set relativenumber
set ruler
set scrolloff=7
set shiftwidth=2
set shortmess=atTI
set showcmd
set showmatch
set showmode
set smartcase
set smarttab
set softtabstop=2
set switchbuf=usetab
set tabstop=2
set tags=./tags;/
set textwidth=79
set ttyfast
set viminfo+=!
set visualbell
set whichwrap+=<,>,h,l
set wildmenu
set wildmode=list:longest
set wrap

set undodir=~/.vimundo
if exists("&undodir")
    set undofile          "Persistent undo! Pure money.
    let &undodir=&directory
    set undolevels=500
    set undoreload=500
endif

nmap <silent> ,/ :nohlsearch<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

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

" toggle between number nonumber and relativenumber from: source: http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
let g:relativenumber = 0
function! ToogleRelativeNumber()
  if g:relativenumber == 0
    let g:relativenumber = 1
    set norelativenumber
    set number
  elseif g:relativenumber == 1
    let g:relativenumber = 2
    set nonumber
    set relativenumber
  else
    let g:relativenumber = 0
    set nonumber
    set norelativenumber
  endif
endfunction
map <F5> :call ToogleRelativeNumber()<cr>

let g:rainbow_active=1
let g:rainbow_load_separately = [
  \ ['*', [['(',')'], ['\[','\]'], ['{','}']], '"[;:]"'],
  \ ['*.{c,cpp,h,hpp}' , [['(',')'], ['\[','\]'], ['{','}']], '"\(;\|,\)"']
  \ ]
let g:rainbow_ctermfgs=['LightBlue','LightCyan','LightGreen','LightYellow','White','DarkCyan','DarkGreen','DarkYellow','DarkRed']
let g:rainbow_guifgs=g:rainbow_ctermfgs

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.k :call DeleteTrailingWS()
autocmd BufWrite *.q :call DeleteTrailingWS()
