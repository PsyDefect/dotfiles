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
Plugin 'xolox/vim-misc'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'
Plugin 'PsyDefect/dragvisuals.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-perl/vim-perl'

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
" dirs.
if has('win32')
    set backupdir=$HOME\\.vim\\temp\\
    set directory=$HOME\\.vim\\temp\\
elseif has('unix')
    set backupdir=~/.vim/temp/
    set directory=~/.vim/temp/

    " If run from the terminal...
    if $TERM == 'xterm'

        " Run in 256 color mode
        set t_Co=256

        " Make background transparent
        hi Normal ctermbg=none

    endif
endif

" Auto save files when you switch focus
"set autowriteall


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
if has('win32')
    set clipboard+=unnamed
    set paste
else
    set clipboard=unnamedplus
endif

" Make tabs default to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight searches
set hlsearch

" Show unnecessary whitespace
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Make the 81st column stand out
highlight ColorColumn ctermbg=DarkGray
set colorcolumn=81

" Always use visual block mode
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

" Set default colorscheme
colorscheme gruvbox
"set bg=dark    " Setting dark mode
if !has("gui_running")
    let g:gruvbox_italic=0
endif

" Line numbers
set number

" Turn on spell check
set spell spelllang=en_us

" Set font for GUI
set fenc=utf-8
set encoding=utf-8

if has("gui_running")
    set guifont=Meslo_LG_M_DZ_for_Powerline:h10:cDEFAULT
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


"Configure DragVisual plugin
vmap  <expr>  <S-LEFT>   DVB_Drag('left')
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
vmap  <expr>  <S-DOWN>   DVB_Drag('down')
vmap  <expr>  <S-UP>     DVB_Drag('up')
vmap  <expr>  D          DVB_Duplicate()

