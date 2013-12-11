set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'bling/vim-airline'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Set the default backup dir so that you don't get temp files left in working
" dirs. For Win.
"silent execute '!mkdir "'.$VIMRUNTIME.'/temp"'
"silent execute '!del "'.$VIMRUNTIME.'/temp/*~"'
"set backupdir=$HOME\\.vim\\temp\\\\
"set directory=$HOME\\.vim\\temp\\\\

set backupdir=~/.vim/temp/
set directory=~/.vim/temp/

" Auto save files when you switch focus
set autowriteall

" Let Vim do tab completion
set wildmode=longest,list,full
set wildmenu

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" Code folding
set foldmethod=syntax

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
"set pastetoggle=<F11>
set clipboard=unnamedplus  " use the clipboards of Vim and win
"set paste               " Paste from a windows or from Vim
"set go+=a               " Visual selection automatically copied to the clipboard

" Make tabs default to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight searches
set hlsearch

" Set default colorscheme
colorscheme molokai

" Line numbers
set number

" Turn on spell check
set spell spelllang=en_us

" Set font for GUI
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Ubuntu\ Mono\ 11
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>

" Perl code folding
" let perl_fold=1
" let perl_fold_blocks=1

"Airline config
"let g:airline#extensions#tabline#enabled = 1

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
