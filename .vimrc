set nocompatible              " be iMproved, required
filetype off                  " required

" the nd initializec
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'pangloss/vim-javascript'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-syntastic/syntastic'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'

Plugin 'majutsushi/tagbar'

Plugin 'mileszs/ack.vim'

Plugin 'ternjs/tern_for_vim'

Plugin 'tpope/vim-rhubarb'

Plugin 'rdolgushin/groovy.vim'

Plugin 'tomasr/molokai'
" Replace ack with ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" status line  settings
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic configurations
" For debugging syntastic uncomment this line:
" let g:syntastic_debug = 3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["html"] }
let g:syntastic_javascript_eslint_exe = 'eslint'

" Ycm configuration
" Close preview window once suggestion is completed
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Airline extension configuration
" let g:airline#extensions#tabline#enabled = 1
 let g:airline_section_z = ''
 let g:airline_section_y = ''
" colorscheme
set t_Co=256
colorscheme molokai   " use dark theme


" vim configs
set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype off
filetype indent on      " activates indenting for files
filetype plugin indent on      " activates indenting for files
filetype plugin on      " activates indenting for files
set autoindent          " auto indenting
set rnu	nu								"  line numbers
let g:rehash256 = 1
set nobackup            " get rid of anoying ~fill
set mouse=n							" allow mouse to interact with vi
"set foldmethod=indent   " enable code folding based on syntax file

""" For case insensitive search
set ic

""" Mappings part 

let mapleader = ","
imap jj <C-c>  		" shift to command mode with double j
map <C-h> <C-w>h 	" shift to left window
map <C-l> <C-w>l 	" shift to right window
map <C-j> <C-w>j 	" shift to bottom window
map <C-k> <C-w>k 	" shift to upper window
map tt :NERDTreeToggle<cr> " open nerdtree with tt
map <leader>y "+y 
map <leader>p "+p 

""" JS specific mappings TODO: make them only work for .js extension;
imap clg console.log( );<C-c>hha
imap clu <C-c>0yy<S-p>t(llvi(<S-S>'


nnoremap k gk
nnoremap j gj

let g:ctrlp_map = '<c-p>' " For CtrlP plugin
let g:ctrlp_cmd = 'CtrlP' " For CtrlP plugin

set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,public/*
let g:javascript_plugin_jsdoc = 1

""" For tabs and stuff
set tabstop=2 softtabstop=2 shiftwidth=2  
" expandtab smarttab

""" share copy with mac copy
set clipboard=unnamed
