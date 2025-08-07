-- ╭───────╮
-- │ MASON │
-- ╰───────╯
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'gopls',
        'jsonls',
        'lua_ls',
        'bashls',
        "rust_analyzer",
        "eslint",
        "clangd",
        "yamlls",
        "cmake",
        "dockerls",
	    "docker_compose_language_service",
        "pyright",
        "ruff",
    },
    -- it seems mason is auto attaching the LSPs now? 
    -- so this is what exclusion from auto attach looks like,
    -- or auto-attach can be allowed and the manually setups below
    -- can be commented out. 
    -- automatic_enable = {
    --     exclude = {"rust_analyzer"}
    -- }
    --handlers = {},
})

-- local lsp_config = require("lspconfig")

--  ╭──────────────────────────────────────────────────────────╮
--  │                         SERVERS                          │
--  ╰──────────────────────────────────────────────────────────╯

-- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Since mason-lspconfig seems to be auto enabling the lsps, I'm commenting these out for now.
-- lsp_config.gopls.setup({})
-- lsp_config.jsonls.setup({})
-- lsp_config.lua_ls.setup({})
-- lsp_config.bashls.setup({})
-- lsp_config.rust_analyzer.setup({})
-- lsp_config.eslint.setup({})
-- lsp_config.clangd.setup({})
-- lsp_config.yamlls.setup({})
-- lsp_config.cmake.setup({})
-- lsp_config.dockerls.setup({})
-- lsp_config.docker_compose_language_service.setup({})
-- lsp_config.pyright.setup({})


-- ╭─────╮
-- │ CMP │
-- ╰─────╯

local cmp = require("cmp")

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
})
