require("newconfig")

-- Global Settings
vim.cmd "set noshowmode"
vim.cmd "set relativenumber"
vim.cmd "set cursorline"
vim.cmd "set guicursor=a:blinkon100"
vim.cmd "set tabstop=4"
vim.cmd "set shiftwidth=4"
vim.cmd "set expandtab"

vim.cmd "set hlsearch"
vim.cmd "set incsearch"

vim.cmd "syntax on"

vim.cmd "let g:go_auto_type_info=1"

--vim.cmd "let g:python3_host_prog = '$HOME/langs/python/bin/python3.11'"
vim.cmd "let g:go_bin_path = '$HOME/langs/go/bin'"

vim.cmd "au BufRead,BufNewFile *.fountain set filetype=fountain"
