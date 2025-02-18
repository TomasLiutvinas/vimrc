" Set tab-related options
set tabstop=2        " number of spaces tab represents
set softtabstop=2    " controls the number of spaces TAB counts when editing
set shiftwidth=2     " auto indentation with << >> ==
" set expandtab        " converts tabs into spaces

" Leader key for keybinds
let mapleader=" "

" Enable line numbers
set number

" Disable line wrapping
set nowrap

" Disable backup files
set backup=0

" Set default encoding
set encoding=utf-8
set fileencoding=utf-8

" Enable sign column for git/error/warning indicators
set signcolumn=yes

" Use relative line numbers
set relativenumber

" Case insensitive search, but case-sensitive if uppercase letters used
set ignorecase
set smartcase

" Timing for hotkeys
set updatetime=250
set timeoutlen=300

" Display whitespace characters
set list
set listchars=tab:»\ ,trail:·,nbsp:␣

" Real-time replacement preview in a split window
set inccommand=split

" Distance for edging of the screen for the cursor
set scrolloff=10

" Highlight search results
set hlsearch

" Enable mouse in all modes
set mouse=a

" Omnisharp configuration (for net6)
let g:OmniSharp_server_use_net6=1

" Disable backup and write backup for Coc plugin
set backup=0
set writebackup=0

" Enable true colors in the terminal
set termguicolors

" Enable syntax highlighting
syntax enable

" Basic Keybindings

" Remove search highlights when pressing Escape
nnoremap <Esc> :nohlsearch<CR>

" Exit terminal mode
tnoremap <Esc><Esc> <C-\><C-n>

" Navigating windows using <C-hjkl>
" Move focus to the left window
nnoremap <C-h> <C-w>h 
" Move focus to the right window
nnoremap <C-l> <C-w>l 
" Move focus to the lower window
nnoremap <C-j> <C-w>j 
" Move focus to the upper window
nnoremap <C-k> <C-w>k 

nnoremap <A-j> ddp
nnoremap <A-k> dd-P
vnoremap <A-j> dpV']
vnoremap <A-k> d-PV']

" Better indentation
xnoremap < <gv
xnoremap > >gv

" Some more rarely used mappings
" Join line with space and return cursor to position
nnoremap J mzJ`z 
" Scroll down half a page and center screen
nnoremap <C-d> <C-d>zz 
" Scroll up half a page and center screen
nnoremap <C-u> <C-u>zz 
" Search next and center screen
nnoremap n nzzzv 
" Search previous and center screen
nnoremap N Nzzzv 

" Pressing <C-c> in insert mode escapes
inoremap <C-c> <Esc>

" Disable Q
nnoremap Q <nop>

" Buffer navigation
nnoremap <M-h> :bprev<CR>
nnoremap <M-l> :bnext<CR>
nnoremap <leader>ba :%bd|e#<CR>

" Avoid vim register for some operations
" Deleting without copying text into default buffer
nnoremap x "_x
xnoremap p "_dP

" Copy current line to system clipboard
nnoremap <leader>Y "+Y

" Reselect pasted text
nnoremap <leader>vp `[v`]

" Copy to system clipboard
nnoremap <leader>y "+y
xnoremap <leader>y "+y

" Paste from system clipboard
nnoremap <leader>p "+p
xnoremap <leader>p "+p

" Search and replace
nnoremap <leader>rn :%s/\<<C-r><C-w>\>/\//gI<Left><Left><Left>

" Tab navigation (gt goes to tab where x is the index)
" We can't map specific tab numbers directly in Vim, but you can cycle through them.
" Move to previous tab
nnoremap <C-PageUp> :tabprev<CR> 
" Move to next tab
nnoremap <C-PageDown> :tabnext<CR> 

" Highlight yanked text
autocmd TextYankPost * silent! lua vim.highlight.on_yank{ higroup="IncSearch", timeout=150 }
