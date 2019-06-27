set guifont=Monaco:h16
set number
" colorscheme Tomorrow-Night-Eighties
" colorscheme railscasts
colorscheme kuroi
set background=dark
set nocompatible              " be iMproved, required
set mouse=a

set title

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor
set backspace=indent,eol,start

set langmenu=en_US.UTF-8

" set updatetime=4000 for git update
set updatetime=100
set clipboard=unnamed
set autoread
" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"
set t_Co=256
set termguicolors

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

map <leader>r :!ruby %<cr>

" UTF-8 Support
set encoding=utf-8

" nmap - <C-o>
" Search down into subfolders
"  set path*=**
set wildmenu

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:rspec_runner = "os_x_iterm"

set cursorline
" hi CursorLine guibg=Grey40
" hi CursorLine term=bold cterm=bold guibg=Grey40
call plug#begin() 

imap jk <Esc>

set relativenumber

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
 " Plug '907th/vim-auto-save'

" " fugitive.vim may very well be the best Git wrapper of all time
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
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Plug 'mdempsky/gocode', {'rtp': 'vim/'}
" Plug 'visualfc/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
" Plug 'stamblerre/gocode', {'rtp': 'vim/'}
Plug 'stamblerre/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'fatih/vim-go'

" Or install latest release tag
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
 Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" " Fuzzy finder for vim (CTRL+P)
 Plug 'kien/ctrlp.vim'
" " slim syntax highlighting for vim.
 Plug 'slim-template/vim-slim'
" " A Vim plugin which shows a git diff in the 'gutter' (sign column)
 Plug 'airblade/vim-gitgutter'
" " Py* 
" " Auto-Indentation
 Plug 'vim-scripts/indentpython.vim'
" " Auto-Complete
 Plug 'vim-syntastic/syntastic'
 Plug 'nvie/vim-flake8'
 Plug 'python-mode/python-mode', { 'branch': 'develop' }
 Plug 'tpope/vim-unimpaired'
 Plug 'itmammoth/run-rspec.vim'

 Plug 'maralla/completor.vim'    
 Plug 'mileszs/ack.vim'
 Plug 'tpope/vim-commentary'
 Plug 'junegunn/gv.vim'

 Plug 'JamshedVesuna/vim-markdown-preview'
 Plug 'burnettk/vim-angular'
 Plug 'leafgarland/typescript-vim'
 Plug 'slim-template/vim-slim'
 Plug 'digitaltoad/vim-pug'

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
" map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>t :RunSpec<CR>

map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <leader>d :sp db/schema.rb<cr>
map <leader>w :w<cr>
nmap <Leader>f <C-w>w
nmap <Leader>g <C-p>
nmap <Leader>i <C-i>
nmap <Leader>o <C-o>
map <leader>a :A<cr>
map <leader>q :q<cr>

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Reload Vim Config Without Having To Restart Editor!
map <leader>s :source ~/.vimrc<CR>

" Stick this in your vimrc to open NERDTree with Ctrl+n 
map <leader>e :NERDTreeToggle<CR>
" map <Leader>v :NERDTree-o<CR>

" au BufNewFile,BufRead *.py
au BufNewFile, *.py,*.php,*.html,*.js,
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

let python_highlight_all=1


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

au filetype go inoremap <buffer> . .<C-x><C-o>
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor    

