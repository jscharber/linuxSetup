if v:progname =~? "evim"
  finish
endif

set spell spelllang=en

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
source $HOME/.pr_vimrc_plug
source $HOME/.pr_vimrc_init

redir! > ~/.vim/tmp/vim.log
silent echom expand("%")

set nocompatible

filetype plugin indent on
syntax on

" read modelines in edited files
set modeline
set modelines=2

set tags=./tags;/
"set tags+=tags;$HOME

set noexpandtab
set autoindent
set tabstop=2
set shiftwidth=2

set termsize="3x0"

set autoindent
set backspace=start,indent
"k=dictionary, s=thesaurus, t=tags, i=current/include files
set complete+=k
set complete+=s
:set complete-=i
set completeopt+=menuone
set dictionary+=/usr/share/dict/american-english
set directory=~/.vim/tmp
set expandtab
set hidden
set history=1000
set magic

" set laststatus=2
set scrolloff=3

" start as login shell to get aliases etc in zsh
" set shellcmdflag+=l
set showcmd
set thesaurus+=~/.vim/dict/thesaurus.txt
set viminfo+=n~/.vim/viminfo
set visualbell
set wildmenu
" set wildmode=longest,list:full
set wildmode=list:longest,full
" set wildmode=longest:full,full
" set wildmode=longest,list
" set wildmode=longest:full

set virtualedit=block
set mousemodel=extend
" right mouse double click starts/ends visual block
nnoremap <rightmouse> <leftmouse><c-v>

set wildignore+=*.a,*.o,*.so,*.dylib,*.pyc,*.out
set wildignore+=*.jpg,*.jpeg,*.png,*.bmp,*.tif,*.tiff
set wildignore+=*.aiff,*.gsm,*.mp3,*.opus,*.raw,*.wav
set wildignore+=*.gif,*.avi,*.mov,*.mp3,*.yuv,*.flv
set wildignore+=*.bin,*.dat,*.img
set wildignore+=*.dmg,*.pkg,*.deb,*.rpm,*.iso,*.zip
set wildignore+=*.tar,*.tgz,*.tbz,*tbz2,*.taz
set wildignore+=*.gz,*.bz,*.bz2,*.z,*.Z
set wildignore+=*.swp
set wildignore+=*.save,*.ig.*

let mapleader = "\\"
let maplocalleader = "\\"
" default fpr comment functions
let b:comment_leader = '#'

set writebackup
set backup
set backupdir=~/.vim/backup
set updatetime=100

let g:gitgutter_preview_win_floating = 1
set mouse=a
set mousemodel=extend
