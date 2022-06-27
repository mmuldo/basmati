"""""""""""
" options "
"""""""""""
" get help with:
"   :options
"   :help OPTION

" move to matches as search is typed in
set incsearch
" don't highlight matches
set nohlsearch
" upper case leading search letter --> match case
" lower case leading search letter --> ignore case
set smartcase ignorecase
" tab = 4 spaces
set tabstop=4 softtabstop=4
" autoindent = 4 spaces
set shiftwidth=4
" convert tabs to spaces in insert mode
set expandtab
" autoindenting
set smartindent
" read .vimrc from current directory, if it exists
set exrc
" show line number on current line, relative line number on all others
set number relativenumber
" keep buffers even when they're not shown
set hidden
" no annoying bell on mistake
set noerrorbells
" don't line wrap if line is too long to fit in screen
set nowrap
" no stupid temp swap files when a file is being edited
set noswapfile
" no backups
set nobackup
" saves undo history
set undofile undodir=~/.vim/undodir
" terminal gui colors
set termguicolors
" min number of screen lines around cursor
set scrolloff=8
" show current mode in status line
set showmode
" completion menu has at least one item and forces user to select a choice
"   in order to insert the text
set completeopt=menuone,noinsert,noselect
" column for signs, e.g. for errors or warnings
set signcolumn=yes
" for good coding practice (max 80 columns per line)
set colorcolumn=80
" if multiple windows, separate cursors so they don't move together
set nocursorbind


"""""""""""
" plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
" fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sharkdp/fd'

" language completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" colorschemes
Plug 'morhetz/gruvbox'

" file manager
Plug 'scrooloose/nerdtree'
call plug#end()

" lua namespace (has all the lua stuff)
lua require('mmuldo')

colorscheme gruvbox


""""""""""
" remaps "
""""""""""
let mapleader = " "

" file manager
nnoremap <leader>0 :NERDTreeToggle<CR>

" search in project
nnoremap <leader>ps :lua require('telescope.builtin').live_grep()<CR>

" moving around buffers
"""""""""""""""""""""""
" next buffer
nnoremap <leader>bn :bn<CR>
" previous buffer
nnoremap <leader>bp :bp<CR>
" delete buffer
nnoremap <leader>bd :bd<CR>
