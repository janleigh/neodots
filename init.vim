"""""""""""""""""""""""""""""""""""""""""""""""""
"             GENERAL CONFIGURATION             "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding
set encoding=utf8

" Set cursor
set guicursor=

" Set leaderkey
let mapleader=","

" Fix colorscheme
set termguicolors

" Enable mouse support
set mouse=a

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable numbering of lines
set number 

" Enable syntax highlighting
syntax enable

" Enable auto indention
set ai

" Enable smart indention
set si

" Use spaces instead of tabs
set expandtab

" Make tabs smarter
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Turn off second status bar
set noshowmode

" Turn off ruler (for clear dashboard)
set noruler

" Change update time for coc.nvim
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Initialize packer.nvim
lua require("init")

""""""""""""""""""""""""""""""""""""""""""""""""
"              PLUGIN CONFIGURATION             "
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Programming Languages Support Plugins
" Global
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'neovim/nvim-lspconfig'

" Rust
Plug 'rust-lang/rust.vim'

" Git Plugins
Plug 'lewis6991/gitsigns.nvim'

" GUI Plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

Plug 'voldikss/vim-floaterm'

" Miscellaneous Vim Plugins
Plug 'jiangmiao/auto-pairs'

Plug 'gko/vim-coloresque'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'alec-gibson/nvim-tetris'
Plug 'tweekmonster/startuptime.vim'

Plug 'sainnhe/gruvbox-material'

call plug#end()

let g:gruvbox_material_background = "hard"
colorscheme gruvbox-material

"""""""""""""""""""""""""""""""""""""""""""""""""
"             KEYBINDS CONFIGURATION            "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"""""""""""""""""""""""""""""""""""""""""""""""""
"               LUA CONFIGURATION               "
"""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOS
require('gitsigns').setup{}

require('nvim-web-devicons').setup{
    override = {
        js = {
            icon = "",
            color = "#FFC745",
            name = "js"
        }
    }
}

require('telescope').setup{
    defaults = {
        prompt_position = "top",
        prompt_prefix = " ",
        selection_caret = " "
    }
}
EOS
