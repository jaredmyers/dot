require("lazy").setup({

    "navarasu/onedark.nvim",
    "tpope/vim-fugitive",

    "nvim-treesitter/nvim-treesitter",

    ---- make sure to pin telescope tag to "0.1.5" if using nvim 8.0 (rhel)
    {"nvim-telescope/telescope.nvim", tag="0.1.6",
        dependencies = {"nvim-lua/plenary.nvim"}
    },

    {"nvim-lualine/lualine.nvim",
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    --
    ---- LSP Support
    {"neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        }
    },

    ---- Autocompletion Support
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "L3MON4D3/LuaSnip",

    --- Golang Goodness
    'fatih/vim-go',

    ---- "saadparwaiz1/cmp_luasnip",
    --"mfussenegger/nvim-lint",
    --"theprimeagen/harpoon",
    --"mbbill/undotree",
})
