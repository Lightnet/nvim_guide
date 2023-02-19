return {
  'williamboman/mason.nvim',
  requires = { 
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  disable = false,
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })
    
    require("mason-lspconfig").setup()
  end
}