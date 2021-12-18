"
"
" nvim config
"
"
"
"
syntax on
filetype on

" Some Basics
set number
set relativenumber
set autoindent 
set tabstop=4
set hlsearch
set encoding=utf-8
set cursorline

let mapleader = " " " map leader to space

call plug#begin()

Plug 'https://github.com/vim-scripts/lightline'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do':'TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'navarasu/onedark.nvim'
Plug 'neovim/nvim-lspconfig' 

call plug#end()

colorscheme onedark
 
lua require'nvim-treesitter.configs'.setup { highlight = {enable = true } }

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3    e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa    4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>n <cmd>bnext<cr>
nnoremap <leader>b <cmd>bprev<cr>

lua << EOF
require'lspconfig'.pylsp.setup{}
EOF
