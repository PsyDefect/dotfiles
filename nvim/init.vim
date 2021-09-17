" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')
  " Plugin list
  Plug 'ervandew/supertab'
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-airline/vim-airline'
" Initialize plugin system
call plug#end()

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Toggle NERDtree
map <C-n> :NERDTreeToggle<CR>

" line numbering
set number

" Use the system clipboard
set clipboard=unnamed

" Use a color column on the 80-character mark
set colorcolumn=80

" Press <tab>, get two spaces
set expandtab shiftwidth=2

" Enable mouse mode
set mouse=a

" Set colorscheme
colorscheme gruvbox
