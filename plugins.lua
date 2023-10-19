 local plugins = {
   {
     "williamboman/mason.nvim",
     opts = {
       ensure_installed = {
         "rust-analyzer",
         "codelldb",
       },
     },
   },
   {
     "neovim/nvim-lspconfig",
     config = function()
       require "plugins.configs.lspconfig"
       require "custom.configs.lspconfig"
     end,
   },
   {
     "simrat39/rust-tools.nvim",
     ft = "rust",
     dependencies = "neovim/nvim-lspconfig",
     opts = function ()
       return require "custom.configs.rust-tools"
     end,
     config = function(_, opts)
       require('rust-tools').setup(opts)
     end
   },
   {
     "mfussenegger/nvim-dap",
     init = function()
       require("core.utils").load_mappings("dap")
     end
   },
}

 return plugins
