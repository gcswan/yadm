" Edit .vimrc 
nnoremap <F4> :e $MYVIMRC<CR>

" Escape
inoremap jj <Esc>

" Leader
let mapleader = "\<space>"

" Save
nnoremap <leader>s :w<cr>

" Quit
noremap <leader>q :q<cr>

" Paste mode
set pastetoggle=<leader>z

"mouse mode on
set mouse=a

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Highlight search results
set hlsearch

" split panes to the right and bottom more naturally
set splitbelow
set splitright

" Show matching brackets when text indicator is over them
set showmatch

"How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Set line wrap
set textwidth=80

"###### Colors and Fonts #####
set noshowmode
set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" ##### Tabs, Text, and Indent #####

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set shiftwidth=4
set tabstop=4
set lbr  " Linebreak on 500 characters
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

 

 
" ##### Tabs, Windows, and Buffers #####

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ##### Status Line #####

" Always show the status line
set laststatus=2

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()

    let save_cursor = getpos(".")

    let old_query = getreg('/')

    silent! %s/\s\+$//e

    call setpos('.', save_cursor)

    call setreg('/', old_query)

endfun

 

" ###### Key Remapping ######

 

" 1 tab == 4 spaces

set shiftwidth=4

set tabstop=4

 

" Linebreak on 500 characters

set lbr

set tw=500

 

set ai "Auto indent

set si "Smart indent

set wrap "Wrap lines

 

 


" Always show the status line
set laststatus=2

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()

   let save_cursor = getpos(".")

   let old_query = getreg('/')

       silent! %s/\s\+$//e

       call setpos('.', save_cursor)

       call setreg('/', old_query)

endfun

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-vue-plugin

call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-system-copy'
Plugin 'StanAngeloff/php.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-commentary'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flrnprz/plastic.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'
Plugin 'simeji/winresizer'
Plugin 'lepture/vim-jinja'
Plugin 'storyn26383/vim-vue'

call vundle#end()            " required

filetype plugin indent on    " required

syntax on
set noshowmode
colorscheme PaperColor
set background=dark

"########## FZF ##########
"set rtp+=~/usr/bin/fzf
nnoremap <Leader>. <Esc> : FZF -m --preview /<CR>
nmap ; :Buffers<CR>
nmap <Leader>t : Files<CR>
nmap <Leader>r : Tags<CR>

"########## SilverSearcher ##########
let g:ackprg = 'ag -s -H --nopager --nogroup --nocolor --column'
nnoremap <Leader>i :Ag<CR>

"########## Line Numbering ##########
set number relativenumber
nnoremap <silent> <C-n> :set relativenumber!<cr>

"########## NERDTREE ##########
nmap <F6> :NERDTreeToggle<CR>

"########## Vim Rainbow ##########
let g:rainbow_active = 1

set list
set listchars=tab:>-

"######### Homemade Status Line #########

Plugin 'leafOfTree/vim-vue-plugin'  
"function! StatusLineGit()
    "let l:branchname = GitBranch()
    "return strlen(l:branchname) > 0?' '.l:branchname.' ':''
"endfunction


"set statusline=
"set statusline+=%{StatusLineGit()}
