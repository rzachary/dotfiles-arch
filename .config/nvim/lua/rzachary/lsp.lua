-- Language Servers
-- Bash
require'lspconfig'.bashls.setup{}

-- GoLang
lspconfig = require "lspconfig"
lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    on_attach=on_attach,
    filetypes = {"go", "gomod" },
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }

local on_attach = require'completion'.on_attach
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.pyls.setup{ on_attach=on_attach }
