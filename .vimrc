
" ==================================================================================
" The usual Vim setup
" ==================================================================================
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
if has('win32')
  source $VIMRUNTIME/mswin.vim
  behave mswin
endif
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
set nohidden
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop


" ==================================================================================
" Movement and other personalized keystrokes
" ==================================================================================
" change the mapleader from \ to ,
let mapleader=","
inoremap jj <Esc>
" nmap ,n <Esc>:tabnew 
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
filetype plugin indent on



" Set up vim-airline 
set laststatus=2 " Always show the statusline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" Set up Powerline
set laststatus=2 " Always show the statusline
"if has('macunix')
  "python from powerline.vim import setup as powerline_setup
  "python powerline_setup()
  "python del powerline_setup
  "set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"elseif has('unix')
  "set rtp+=~/bin/python/lib/python2.7/site-packages/Powerline-beta-py2.7.egg/powerline/bindings/vim
  "set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"elseif has('win32')
  "set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
"endif

" ==================================================================================
" GUI options
" The statusline options appear under plugins since I am using powerline
" ==================================================================================
set t_Co=256
" Turn on jellybeans
colorscheme jellybeans
" Turn on solarized
"set background=light
"colorscheme solarized
set guioptions=ageimrLt
set showtabline=2
set cursorline " Turn on the line shadowing indicating where the cursor is
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




