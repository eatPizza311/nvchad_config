-- Import the existing NVchad LSP configuration
local config = require("plugins.configs.lspconfig")
-- Obtain the on_attach and capabilities functions
local on_attach = config.on_attach
local capabilities = config.capabilities

-- Import the lspconfig plugin
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

-- Setup PyRight
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
})
