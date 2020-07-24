set nocompatible              " be iMproved, required
filetype off                  " required

""" Mappings part 
let mapleader = ","

" Check if the vim-plug is installed. If not, do it!
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'pangloss/vim-javascript'

Plug 'heavenshell/vim-jsdoc'

" For typescript
Plug 'leafgarland/typescript-vim'

" https://github.com/Shougo/vimproc.vim#install for Quramy/tsuquyomi 
" Then compile the plugin manually where it was installed.
" i.e. on Linux & Mac
" $ cd ~/.vim/bundle/vimproc.vim && make

" Give more space for displaying messages.
set cmdheight=2


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  call CocAction('doHover')
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
" Not working as expected
" nmap <silent> gy <Plug>(coc-type-definition)
" Not working as expected
nmap <silent> gr <Plug>(coc-references)

" coc:snippets configuration
" Use <C-l> for trigger snippet expand.
imap <C-L> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-J> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-J>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-K>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-J> <Plug>(coc-snippets-expand-jump)

Plug 'Shougo/vimproc.vim'

Plug 'ruanyl/vim-gh-line'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim snippets
Plug 'honza/vim-snippets'


" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" For typescript end

Plug 'kien/ctrlp.vim'

Plug 'tacahiroy/ctrlp-ssh'

Plug 'scrooloose/nerdtree'

Plug 'w0rp/ale'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'

Plug 'majutsushi/tagbar'

Plug 'mileszs/ack.vim'

Plug 'ternjs/tern_for_vim'

Plug 'tpope/vim-rhubarb'

Plug 'rdolgushin/groovy.vim'

Plug 'prettier/vim-prettier'

" Colorschemes
Plug 'tomasr/molokai'

Plug 'nanotech/jellybeans.vim'
" End colorschemes

Plug 'airblade/vim-gitgutter'

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-obsession'

Plug 'terryma/vim-multiple-cursors'

" For showing vim markers
Plug 'kshenoy/vim-signature'
"
" For vim markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'kamykn/spelunker.vim'

Plug 'vim-scripts/ZoomWin'

" Jump to characters like chrome vimium plugin
Plug 'easymotion/vim-easymotion'

" Start screen pretty and beautify
Plug 'mhinz/vim-startify'

let quote  = system('echo $(quote.sh)')

" Set the quotes used by startify
let g:startify_custom_header_quotes = [
      \ [quote],
      \ ]
" Initialize plugin system
call plug#end()

let g:spelunker_white_list_for_user = ['sharethemeal', 'mailchimp', ]

" Has issues with CtrlP key
" Plugin 'vim-scripts/YankRing.vim'

" Replace ack with ag
let g:ackprg = 'ag --nogroup --nocolor --column'


filetype plugin indent on    " required

" set cursor line
set cursorline

" tab bar related
autocmd FileType tagbar setlocal nocursorline nocursorcolumn

" ale configuration
" linters for ale
let g:ale_linters = {'javascript': ['prettier', 'eslint', 'tsserver'], 'typescript': ['tsserver']}

" let g:ale_fixers = {'javascript': ['prettier', 'eslint', 'tsserver'], 'typescript': ['tsserver']}

" if you wish to keep the window open even after errors disappear.
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 1
let g:ale_completion_enabled = 1

" for ale documentation
" map <leader>? :ALEHover<cr>

" Ycm configuration
" Close preview window once suggestion is completed
" let g:ycm_autoclose_preview_window_after_insertion = 0
" let g:ycm_autoclose_preview_window_after_completion = 0
" For c style lgnguages https://github.com/vim-syntastic/syntastic/issues/1246
" let g:ycm_show_diagnostics_ui = 0

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


vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

imap jj <C-c>  		" shift to command mode with double j

map <C-h> <C-w>h 	" shift to left window
map <C-l> <C-w>l 	" shift to right window
map <C-j> <C-w>j 	" shift to bottom window
map <C-k> <C-w>k 	" shift to upper window
map tt :NERDTreeToggle<cr> " open nerdtree with tt
map tc :NERDTreeFind<cr> " open nerdtree and shows current file
" Incase we are not sharing buffer b/w os and vim 
map <leader>y "+y 
map <leader>p "+p 
map <C-q> :buff

nnoremap k gk
nnoremap j gj

" For ctrlp accessing over ssh connections
let g:ctrlp_extensions = ['ssh']
let g:ctrlp_map = '<c-p>' " For CtrlP plugin
let g:ctrlp_cmd = 'CtrlP' " For CtrlP plugin

set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,public/*,*/dists/*,*.map
let g:javascript_plugin_jsdoc = 1

""" For tabs and stuff

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


set tabstop=2 softtabstop=2 shiftwidth=2  

""" Auto read file when it's contents have been changed
set autoread

" expandtab smarttab

" for jenkins file
au BufNewFile,BufRead Jenkinsfile setf groovy
""" share copy with mac copy
""" set clipboard+=unnamed
