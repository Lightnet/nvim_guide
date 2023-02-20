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
  enabled = true,
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    --"jose-elias-alvarez/null-ls.nvim",
    --'mfussenegger/nvim-dap', --DAP (Debug Adapter Protocol)
    "nvim-telescope/telescope.nvim",
  },
  keys={
    --{'<leader>rn', '<cmd>lua vim.lsp.buf.rename<cr>', desc = "Rename"},
    --{'<leader>ca', '<cmd>lua vim.lsp.buf.code_action<cr>', desc = "code_actionr"},

    --{'gd', '<cmd>lua vim.lsp.buf.definition<cr>', desc = "definition"},
    --{'gi', '<cmd>lua vim.lsp.buf.implementation<cr>', desc = "implementation"},
    --{'gr', "<cmd>lua require('telescope.builtin').lsp_references<cr>", desc = "lsp_references"},
    --{'gr', "<cmd>lua vim.lsp.buf.references()<CR>", desc = "references"},
    --{'K', '<cmd>lua vim.lsp.buf.hover', desc = "hover"},
  },
  config = function()
    --does not load here
  end,
  init=function()
    --vim.keymap.set('n','<leader>rt','<cmd>lua print("test")<cr>', {})
    --vim.keymap.set('n','<leader>rl','<cmd>lua print("TESTSSS")<cr>', {})--works
    --require('notify')('Hellolll')

    require("mason").setup({
      --providers = {
        --"mason.providers.client",
        --"mason.providers.registry-api",
      --},
      --log_level = vim.log.levels.DEBUG,
    })

    require("mason-lspconfig").setup({
      --ensure_installed = { "lua_ls", "rust_analyzer" },
    })

    local on_attach = function(client, bufnr)

      local opts = { noremap=true, silent=true, buffer=bufnr }

      vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename, opts)
      vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action, opts)

      vim.keymap.set('n','gd',vim.lsp.buf.definition, opts)
      vim.keymap.set('n','gi',vim.lsp.buf.implementation, opts)
      vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, opts)
      vim.keymap.set('n','gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n','K',vim.lsp.buf.hover, opts)
    end

    --vim.keymap.set('n','<leader>rt','<cmd>lua print("test")<cr>', {})

    -- Set up lspconfig.
    --local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Lua
    -- sumneko_lua -> lua_ls
    require'lspconfig'.lua_ls.setup({ -- lua
      capabilities = capabilities,
      on_attach = on_attach,
      flags = lsp_flags,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            --fileEncoding = { "utf8" }, 
            --builtin = "enable",
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
            --enable = true,
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
            checkThirdParty = false, -- THIS IS THE IMPORTANT LINE TO ADD. popup message
            --fn.stdpath("config"),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- Rust
    require("lspconfig").rust_analyzer.setup {
      capabilities = capabilities,
      on_attach = on_attach,
      --cmd = {
        --"rustup", "run", "stable", "rust-analyzer"
      --}
    }
  end
}