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

" For typescript
Plugin 'leafgarland/typescript-vim'

" https://github.com/Shougo/vimproc.vim#install for Quramy/tsuquyomi 
" Then compile the plugin manually where it was installed.
" i.e. on Linux & Mac
" $ cd ~/.vim/bundle/vimproc.vim && make
Plugin 'Shougo/vimproc.vim'

" For typescript end

Plugin 'kien/ctrlp.vim'

Plugin 'tacahiroy/ctrlp-ssh'

Plugin 'scrooloose/nerdtree'

Plugin 'w0rp/ale'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'

Plugin 'majutsushi/tagbar'

Plugin 'mileszs/ack.vim'

Plugin 'ternjs/tern_for_vim'

Plugin 'tpope/vim-rhubarb'

Plugin 'rdolgushin/groovy.vim'

" Colorschemes
Plugin 'tomasr/molokai'

Plugin 'nanotech/jellybeans.vim'
" End colorschemes

Plugin 'airblade/vim-gitgutter'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-obsession'

Plugin 'terryma/vim-multiple-cursors'

" For showing vim markers
Plugin 'kshenoy/vim-signature'
"
" For vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Has issues with CtrlP key
" Plugin 'vim-scripts/YankRing.vim'

" Replace ack with ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set cursor line
set cursorline

" tab bar related
autocmd FileType tagbar setlocal nocursorline nocursorcolumn

" ale configuration
" linters for ale
let g:ale_linters = {'javascript': ['prettier', 'eslint'], 'typescript': ['tsserver']}

let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'typescript': ['tsserver']}

" if you wish to keep the window open even after errors disappear.
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 1
let g:ale_completion_enabled = 1

" Ycm configuration
" Close preview window once suggestion is completed
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_autoclose_preview_window_after_completion = 0
" For c style lgnguages https://github.com/vim-syntastic/syntastic/issues/1246
let g:ycm_show_diagnostics_ui = 0

" syntastic typescript
" let g:syntastic_typescript_checkers = ['tsuquyomi']

" Airline extension configuration
" let g:airline#extensions#tabline#enabled = 1
 let g:airline_section_z = ''
 let g:airline_section_y = ''
" colorscheme
set t_Co=256
" Molokai theme related changes BEGIN
colorscheme molokai
if &diff
    colorscheme jellybeans
endif

" Better gitcommit messages
"  hi diffAdded   ctermbg=NONE ctermfg=46  cterm=NONE guibg=NONE guifg=#00FF00 gui=NONE
"  hi diffRemoved ctermbg=NONE ctermfg=196 cterm=NONE guibg=NONE guifg=#FF0000 gui=NONE
"  hi link diffLine String
"  hi link diffSubname Normal
" Molokai theme related changes END

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

" fold related options
set foldmethod=syntax
set foldnestmax=15
set nofoldenable
set foldlevel=2
highlight Folded ctermbg=black ctermfg=white cterm=bold
highlight FoldColumn ctermbg=blue ctermfg=red cterm=bold

" Set spelling checks
set spelllang=en

""" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not.
set ignorecase
set smartcase

""" Mappings part 
let mapleader = ","

imap jj <C-c>  		" shift to command mode with double j

" for ale documentation
map <leader>? :ALEHover<cr>

map <C-h> <C-w>h 	" shift to left window
map <C-l> <C-w>l 	" shift to right window
map <C-j> <C-w>j 	" shift to bottom window
map <C-k> <C-w>k 	" shift to upper window
map tt :NERDTreeToggle<cr> " open nerdtree with tt
" Incase we are not sharing buffer b/w os and vim 
map <leader>y "+y 
map <leader>p "+p 
map <C-q> :buff

""" JS specific mappings TODO: make them only work for .js extension;
imap clg console.log( );<C-c>hha
imap clu <C-c>0yy<S-p>t(llvi(<S-S>'

nnoremap k gk
nnoremap j gj

" For ctrlp accessing over ssh connections
let g:ctrlp_extensions = ['ssh']
let g:ctrlp_map = '<c-p>' " For CtrlP plugin
let g:ctrlp_cmd = 'CtrlP' " For CtrlP plugin

set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,public/*
let g:javascript_plugin_jsdoc = 1

""" For tabs and stuff
set tabstop=2 softtabstop=2 shiftwidth=2  

""" Auto read file when it's contents have been changed
set autoread

" expandtab smarttab

" for jenkins file
au BufNewFile,BufRead Jenkinsfile setf groovy
""" share copy with mac copy
set clipboard+=unnamed

