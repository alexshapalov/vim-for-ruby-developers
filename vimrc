set guifont=Monaco:h20
set number
colorscheme Tomorrow-Night-Eighties
" colorscheme railscasts
set nocompatible              " be iMproved, required
set mouse=a

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor
set backspace=indent,eol,start

" set updatetime=4000 for git update
set updatetime=100
set clipboard=unnamed

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting

" nmap - <C-o>
" Search down into subfolders
"  set path*=**
set wildmenu

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'

" Dependencies of snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'jpo/vim-railscasts-theme'
          
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'

" fugitive.vim may very well be the best Git wrapper of all time
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdcommenter'

" Rails rspec 
Plug 'thoughtbot/vim-rspec'

" Snippets for our use :)
Plug 'garbas/vim-snipmate'

" Nice file browsing with -
Plug 'tpope/vim-vinegar'

" Vim for GOlang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Fuzzy finder for vim (CTRL+P)
Plug 'kien/ctrlp.vim'

" slim syntax highlighting for vim.
Plug 'slim-template/vim-slim'

" A Vim plugin which shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'

call plug#end()

" ------------------------------------------------------------------
" STATUSBAR Settingss

set laststatus=2
" export TERM=xterm-256color
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }

" ------------------------------------------------------------------
" STATUSBAR end


" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

" Reload Vim Config Without Having To Restart Editor
map <leader>s :source ~/.vimrc<CR>

set hlsearch

" Always open the tree when booting Vim, but don’t focus it:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Display hidden files:
let NERDTreeShowHidden=1

set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <leader>d :sp db/schema.rb<cr>
map <leader>h :CtrlP<cr>
map <Leader>ee :CtrlWW<cr>

let g:rspec_runner = "os_x_iterm2"

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Reload Vim Config Without Having To Restart Editor!
map <leader>s :source ~/.vimrc<CR>
