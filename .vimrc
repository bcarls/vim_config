
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
"set nohidden
set hidden
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

" Set up vim-commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" Set up CtrlP
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height=50

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .hg
        \ --ignore .DS_Store
        \ --ignore "**/*.pyc"
        \ -g ""'
elseif executable('ack')
  let g:ctrlp_user_command = 'ack %s --nocolor -f 
        \ --ignore-file=ext:d
        \ --ignore-file=ext:DS_Store'
endif

let g:ctrlp_user_command = 'ack %s --nocolor -f 
      \ --ignore-file=ext:d
      \ --ignore-file=ext:DS_Store'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'



" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" call unite#custom#profile('default', 'context', {
"               \ 'start_insert': 1
"               \ })

" " let g:unite_data_directory=s:get_cache_dir('unite')
" let g:unite_source_history_yank_enable=1
" let g:unite_source_rec_max_cache_files=5000

" if executable('ag')
"   let g:unite_source_grep_command='ag'
"   let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C4'
"   let g:unite_source_grep_recursive_opt=''
" elseif executable('ack')
"   let g:unite_source_grep_command='ack'
"   let g:unite_source_grep_default_opts='--no-heading --no-color -C4'
"   let g:unite_source_grep_recursive_opt=''
" endif

" nnoremap <Leader>t :Unite file_rec/async<cr>
" nnoremap <space>/ :Unite grep:.<cr>
" let g:unite_source_history_yank_enable = 1
" nnoremap <space>y :Unite history/yank<cr>
" nnoremap <space>s :Unite -quick-match buffer<cr>

" function! s:get_cache_dir(suffix) "{{{
"   return resolve(expand(s:cache_dir . '/' . a:suffix))
" endfunction "}}}




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
" Turn on jellybeans
colorscheme jellybeans
" Turn on solarized
"set background=light
"colorscheme solarized
if has("gui_macvim")
  colorscheme jellybeans
endif
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




