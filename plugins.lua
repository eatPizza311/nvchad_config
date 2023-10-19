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
 }

 return plugins
