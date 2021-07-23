"""""""""""""""""""""""""""""""""""""""""""""""""
"             GENERAL CONFIGURATION             "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding
set encoding=utf8

" Set cursor
set guicursor=

" Initialize packer.nvim
lua require("init")

"""""""""""""""""""""""""""""""""""""""""""""""""
"             KEYBINDS CONFIGURATION            "
"""""""""""""""""""""""""""""""""""""""""""""""""

" Use <C-Space> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <C-Space>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<C-Space>" :
      \ coc#refresh()
