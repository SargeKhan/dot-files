set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-fugitive'

Plug 'pangloss/vim-javascript'

Plug 'liuchengxu/vim-clap'

" For typescript
Plug 'leafgarland/typescript-vim'

Plug 'github/copilot.vim'

Plug 'Equilibris/nx.nvim'

Plug 'stevearc/dressing.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }


Plug 'tpope/vim-surround'
" https://github.com/Shougo/vimproc.vim#install for Quramy/tsuquyomi 
" Then compile the plugin manually where it was installed.
" i.e. on Linux & Mac
" $ cd ~/.vim/bundle/vimproc.vim && make
Plug 'Shougo/vimproc.vim'

Plug 'easymotion/vim-easymotion'


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

Plug 'scrooloose/nerdtree'

Plug 'w0rp/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-airline/vim-airline'

Plug 'majutsushi/tagbar'

Plug 'mileszs/ack.vim'

Plug 'ternjs/tern_for_vim'

Plug 'tpope/vim-rhubarb'

Plug 'rdolgushin/groovy.vim'

" Colorschemes
Plug 'mhinz/vim-janah'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'NLKNguyen/papercolor-theme'

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

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

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

""" ------------- miscellaneous start -----------------

filetype plugin indent on    " required

" set cursor line
set cursorline

" tab bar related
autocmd FileType tagbar setlocal nocursorline nocursorcolumn


" Airline extension configuration
" let g:airline#extensions#tabline#enabled = 1
 let g:airline_section_z = ''
 let g:airline_section_y = ''


 colorscheme PaperColor

set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip,public/*
let g:javascript_plugin_jsdoc = 1

" https://github.com/frazrepo/vim-rainbow#simple-configuration
let g:rainbow_active = 0

""" For tabs and stuff
set tabstop=2 softtabstop=2 shiftwidth=2  

""" Auto read file when it's contents have been changed
set autoread

set notimeout nottimeout

set expandtab smarttab

" for jenkins file
au BufNewFile,BufRead Jenkinsfile setf groovy
""" share copy with mac copy
set clipboard+=unnamed
""" ------------- miscellaneous start -----------------

""" ------------- vim configs start --------------------

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


map <C-h> <C-w>h 	" shift to left window
map <C-l> <C-w>l 	" shift to right window
map <C-j> <C-w>j 	" shift to bottom window
map <C-k> <C-w>k 	" shift to upper window
" Incase we are not sharing buffer b/w os and vim 
map <leader>y "+y 
map <leader>p "+p 
map <C-q> :buff
nnoremap k gk
nnoremap j gj

""" ------------- vim configs end  (partial migration) --------------------


""" ------------ NerdTree ( not needed)-----------------------------

let NERDTreeIgnore = ['\.map']
map tt :NERDTreeToggle<cr> " open nerdtree with tt
map tc :NERDTreeFind<cr> " open nerdtree with tt

""" ------------ NerdTree end--------------------------




""" -------------------Telescope configuration start (done)----------------
nnoremap <leader>t :Telescope<cr>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>


""" -------------------Telescope configuration end (done)----------------

""" ------------- coc  configs start --------------------

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

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

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction



" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1):
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc:snippets configuration
" Use <C-l> for trigger snippet expand.
imap <C-L> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-J> <Plug>(coc-snippets-select)

" Since v> 12 is required for node
let g:coc_node_path = '/home/sargekhan/.nvm/versions/node/v16.17.0/bin/node'
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Mappings for CoCList
" Show all diagnostics.


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

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
"

" Run the Code Lens action on the current line.
nmap <leader><space>f  <Plug>(coc-codeaction)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ft  <Plug>(coc-codeaction-selected)
nmap <leader>fy  <Plug>(coc-codeaction-selected)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-J>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-K>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-J> <Plug>(coc-snippets-expand-jump)


""" ------------- coc  configs end --------------------

