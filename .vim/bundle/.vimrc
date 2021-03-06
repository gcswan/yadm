"##### Vimrc #####

nnoremap <F3> :e $MYVIMRC<CR>

 

"##### Vim Ui #####

 

inoremap jj <Esc>

 

let mapleader = "\<space>"

 

"save file with leader s

nnoremap <leader>s :w<cr>

inoremap <leader>s <C-c>:w<cr>

 

"quit file with Leader q

noremap <leader>q :q<cr>

 

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

 

" 1 tab == 4 spaces

set shiftwidth=4

set tabstop=4

 

" Linebreak on 500 characters

set lbr

set tw=500

 

set ai "Auto indent

set si "Smart indent

set wrap "Wrap lines

 

 

" ##### Visual Mode #####

 

 

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

 

set nocompatible              " be iMproved, required

filetype off                  " required

 

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

 

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'

Plugin 'itchyny/lightline.vim'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'StanAngeloff/php.vim'

Plugin 'junegunn/fzf.vim'

Plugin 'tpope/vim-commentary'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'kyoz/purify'

Plugin 'sheerun/vim-polyglot'

Plugin 'joshdick/onedark.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'rakr/vim-one'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'flrnprz/plastic.vim'

Plugin 'rafi/awesome-vim-colorschemes'

 

call vundle#end()            " required

 

filetype plugin indent on    " required

 

set noshowmode

 

"colorscheme one

"colorscheme PaperColor

"colorscheme afterglow

"colorscheme deus

"colorscheme space-vim-dark

"colorscheme happy_hacking

"colorscheme minimalist

"colorscheme molokayo

"set background=light

set background=dark

 

syntax on

 

let g:airline_theme='one'

 

 

"########## Other Plugins and Add Ons ##########

 

"########## FZF ##########

    set rtp+=~/.fzf

 

 

    nnoremap <Leader>. <Esc> : FZF -m /<CR>

    nmap ; :Buffers<CR>

    nmap <Leader>t : Files<CR>

    nmap <Leader>r : Tags<CR>

 

    let g:ackprg = 'ag --nogroup --nocolor --column'

 

    let g:fzf_colors =

                \ { 'fg':      ['fg', 'Normal'],

      \ 'bg':      ['bg', 'Normal'],

      \ 'hl':      ['fg', 'Comment'],

      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],

      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],

      \ 'hl+':     ['fg', 'Statement'],

      \ 'info':    ['fg', 'PreProc'],

      \ 'border':  ['fg', 'Ignore'],

      \ 'prompt':  ['fg', 'Conditional'],

      \ 'pointer': ['fg', 'Exception'],

      \ 'marker':  ['fg', 'Keyword'],

      \ 'spinner': ['fg', 'Label'],

      \ 'header':  ['fg', 'Comment'] }

 

  "########## Line Numbering ##########

    set number relativenumber

 

    nnoremap <silent> <C-n> :set relativenumber!<cr>

 

 

  "########## NERDTREE ##########

  nmap <F6> :NERDTreeToggle<CR>
