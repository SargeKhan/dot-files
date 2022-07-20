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

" Give more space for displaying messages.
set cmdheight=2

" For cursor color
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

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

" Since v> 12 is required for node
let g:coc_node_path = '/Users/sarge/.nvm/versions/node/v12.22.5/bin/node'
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

if has('nvim') || has('patch-8.2.0750')
  " Find files using Telescope command-line sugar.
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>
endif
  " Mappings for CoCList
  " Show all diagnostics.
  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" Resume actions list.
nnoremap <silent><nowait> <space>f  :<C-u>CocAction<CR>

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

Plug 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdtree'

Plugin 'w0rp/ale'

Plugin 'Valloric/YouCompleteMe'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plugin 'vim-airline/vim-airline'

Plugin 'majutsushi/tagbar'

Plugin 'mileszs/ack.vim'

Plugin 'ternjs/tern_for_vim'

Plugin 'tpope/vim-rhubarb'

Plugin 'rdolgushin/groovy.vim'

" Colorschemes
Plug 'mhinz/vim-janah'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'NLKNguyen/papercolor-theme'

Plug 'nanotech/jellybeans.vim'
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

"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif

 colorscheme PaperColor

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


set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,public/*
let g:javascript_plugin_jsdoc = 1

" https://github.com/frazrepo/vim-rainbow#simple-configuration
let g:rainbow_active = 0

""" For tabs and stuff
set tabstop=2 softtabstop=2 shiftwidth=2  

""" Auto read file when it's contents have been changed
set autoread

" expandtab smarttab

" for jenkins file
au BufNewFile,BufRead Jenkinsfile setf groovy
""" share copy with mac copy
set clipboard+=unnamed
