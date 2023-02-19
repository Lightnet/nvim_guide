--[[
https://github.com/williamboman/mason.nvim
https://github.com/williamboman/mason-lspconfig.nvim
https://github.com/williamboman/mason.nvim/discussions/606

https://github.com/williamboman/mason.nvim#how-to-use-installed-packages
https://github.com/neovim/nvim-lspconfig
https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/
--]]
-- https://www.youtube.com/watch?v=Mccy6wuq3JE&t=1018s

--- 

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    --'simrat39/rust-tools.nvim',
    "jose-elias-alvarez/null-ls.nvim",
    'mfussenegger/nvim-dap', --DAP (Debug Adapter Protocol)
    "nvim-telescope/telescope.nvim",
  },
  keys={
    {'<leader>rn', '<cmd>lua vim.lsp.buf.rename<cr>', desc = "Rename"},
    {'<leader>ca', '<cmd>lua vim.lsp.buf.code_action<cr>', desc = "code_actionr"},

    {'gd', '<cmd>lua vim.lsp.buf.definition<cr>', desc = "definition"},
    {'gi', '<cmd>lua vim.lsp.buf.implementation<cr>', desc = "implementation"},
    --{'gr', "<cmd>lua require('telescope.builtin').lsp_references<cr>", desc = "lsp_references"},
    {'gr', "<cmd>lua vim.lsp.buf.references()<CR>", desc = "references"},
    {'K', '<cmd>lua vim.lsp.buf.hover', desc = "hover"},
  },
  config = function()
    require("mason").setup({
      providers = {
        "mason.providers.client",
        "mason.providers.registry-api",
      },
      log_level = vim.log.levels.DEBUG,
    })
    require("mason-lspconfig").setup()

    local on_attach = function(_, _)
      --vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename, {})
      --vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action, {})

      --vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
      --vim.keymap.set('n','gi',vim.lsp.buf.implementation, {})
      --vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, {})
      vim.keymap.set('n','gr', vim.lsp.buf.references, {})
      --vim.keymap.set('n','K',vim.lsp.buf.hover, {})
    end

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require("lspconfig").rust_analyzer.setup {
      capabilities = capabilities,
      on_attach = on_attach,
      --cmd = {
        --"rustup", "run", "stable", "rust-analyzer"
      --}
    }

  end,
  init=function()
    --vim.keymap.set('n','<leader>rl','<cmd>lua print("TESTSSS")<cr>', {})--works
    --require('notify')('Hellolll')
  end
}