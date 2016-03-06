
" ==================================================================================
" The usual Vim setup
" ==================================================================================
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
syntax on
set backup
set showcmd
autocmd BufNewFile,BufRead *.tex setlocal spell " Turn on spell check for Latex


" ==================================================================================
" Setup tab and related options
" ==================================================================================
set autoindent 
set expandtab
set shiftwidth=2
set softtabstop=2
set wildmenu
set wildmode=list:longest,full
"set nohidden
set hidden
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop


" ==================================================================================
" Movement and other personalized keystrokes
" ==================================================================================
" change the mapleader from \ to ,
let mapleader=","
" inoremap jk <Esc>
" Jumps to next row in editor in the case of wrapped lines
nnoremap j gj
nnoremap k gk
" Clear search buffer without typing /asfasdf
nmap <silent> ,/ :nohlsearch<CR>
set list
if has('macunix')
  set listchars=tab:▸\ ,eol:¬ " Show invisible characters
elseif has('unix')
  set listchars=tab:▸\ ,eol:¬ " Show invisible characters
endif
nnoremap ; :
set undofile
set showmode
set showcmd
" Allow fast buffer movement
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
" Wrap Latex paragraphs to make them readable, just type gqlp
map \gq ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR>
omap lp ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>:nohlsearch<CR>

" ==================================================================================
" Make searching easier
" A lot of this came from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" ==================================================================================
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" ==================================================================================
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" Other plugin options appear here
" ==================================================================================
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Setup some configurations to make the <Esc> button immediate for neovim
" This will override vim-sensible
runtime! plugin/sensible.vim
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
set nottimeout

""""""""""""""""""""""""""""""
" Set up vim-airline 
""""""""""""""""""""""""""""""
set laststatus=2 " Always show the statusline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

""""""""""""""""""""""""""""""
" Set up vim-commentary
""""""""""""""""""""""""""""""
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s


""""""""""""""""""""""""""""""
" Set up languagetool
""""""""""""""""""""""""""""""
let g:languagetool_jar = "$HOME/LanguageTool-3.1/languagetool-commandline.jar"


""""""""""""""""""""""""""""""
" Set up fzf for fuzzy file finding
""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf





" ==================================================================================
" GUI options
" The statusline options appear under plugins since I am using powerline
" ==================================================================================

set t_Co=256
" Turn on molokai
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
set guifont=Inconsolata\ for\ Powerline:h15
" Turn on blackdust
" colorscheme blackdust
" Turn on corporation
" colorscheme corporation
" Turn on summerfruit256
" colorscheme summerfruit256
" Turn on jellybeans
" colorscheme jellybeans
" Turn on solarized
set background=light
colorscheme solarized
if has("gui_macvim")
  colorscheme jellybeans
endif
set guioptions=ageimrLt
set showtabline=2
" set cursorline " Turn on the line shadowing indicating where the cursor is
set ttyfast " Send more characters for redraws
" Turn on relative numbers for normal mode and absolute numbers for inset mode
set relativenumber 
set number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
"Turn off system beep
set vb t_vb=

" ==================================================================================
" Functions
" ==================================================================================

set rtp+=/usr/local/opt/fzf


