set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Docsets for vim using dash
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Vim Surround
Bundle 'tpope/vim-surround.git'

" NERdTREE
Bundle 'scrooloose/nerdtree'

" snipmate snippet plugin
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snipmate'

" SuperTab (tadadada)
Bundle 'ervandew/supertab'

" Omni Completion
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action=='j'
            return "\<C-N>"
        elseif a:action=='k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Powerline
Bundle 'Lokaltog/vim-powerline'

" Syntastic (Error checking while writing)
Bundle 'scrooloose/syntastic'

" Easy Motion 
Bundle 'Lokaltog/vim-easymotion'

" Gundo (remap for toggle)
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

" Base
set autoread
syntax enable
set ruler
set number
set ttyfast
set cmdheight=2
set mat=2

" Swap files
set nobackup
set nowritebackup
set swapfile

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Map sort function to a key <alphabetical sort>
" Useful to make alphabetical lists
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
" <better indentation>
vnoremap > >gv 
vnoremap < <gv

" Pathogen 
execute pathogen#infect()

" Python Specific

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Pymode
" ---------------------------
" Vim motion
let g:pymode_motion = 1

" Show documentation
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

" virtualenv
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV

" Run Code 
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

" Python syntax
let g:pymode_syntax = 1
"------------------------------

" Jedi-Vim (python)
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0

" View on splits
set splitbelow
set splitright

" Search  
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set noerrorbells
set novisualbell
set laststatus=2
set wildmenu

" keyMappings
nnoremap ; :
nnoremap : ;
imap jj <Esc>
set showtabline=2

iabbrev retrun return
iabbrev retrn return

" Over extension line refrence
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%88v', 100)

" Show whitespace
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/
let g:pymode_trim_whitespaces = 1
" tab navigation
nnoremap <C-t>		:tabnew<CR>
inoremap <C-t>		<Esc>:tabnew<CR>
nnoremap tn		:tabn<CR>

nnoremap mn		<C-w><C-w>
nnoremap en  		:NERDTree

" Mapleader
:let mapleader = ","
			
