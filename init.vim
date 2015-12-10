" Begin vim-plug section
call plug#begin('~/.config/nvim/plugins')

"Plug 'honza/vim-snippets'
Plug 'PsyDefect/dragvisuals.vim'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-perl/vim-perl'
Plug 'fatih/vim-go'

" Add plugins to &runtimepath
call plug#end()


if has('unix')
    set backupdir=~/.config/nvim/temp/
    set directory=~/.config/nvim/temp/
endif

" Highlight searches
set hlsearch

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

"set pastetoggle=<F11>
if has('unix')
    set clipboard+=unnamedplus
endif

set smartindent

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
set background=dark

" Line numbers
set number

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>


"Airline config
let g:airline_powerline_fonts = 1


"Configure DragVisual plugin
vmap  <expr>  <S-LEFT>   DVB_Drag('left')
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
vmap  <expr>  <S-DOWN>   DVB_Drag('down')
vmap  <expr>  <S-UP>     DVB_Drag('up')
vmap  <expr>  D          DVB_Duplicate()

