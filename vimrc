set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
colorscheme gruvbox
set bg=dark    " Setting dark mode

" Line numbers
set number

" Turn on spell check
set spell spelllang=en_us

" Set font for GUI
if has("gui_running")
    set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline 10
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
let g:airline_powerline_fonts = 1

if $TERM == 'xterm'
  set t_Co=256
  hi Normal ctermbg=none
endif
