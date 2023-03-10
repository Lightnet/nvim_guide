-- this is for LSP language server protocol
--example vscode or IDE editor that use program language to auto check for error.

return {
  'williamboman/mason.nvim',
  requires = { 
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'hrsh7th/cmp-nvim-lsp',
    --'hrsh7th/nvim-cmp',
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
    
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "rust_analyzer" },
    })

    --vim.lsp.set_log_level("debug")

    -- https://github.com/neovim/nvim-lspconfig
    local lsp_flags = {
      -- This is the default in Nvim 0.7+
      debounce_text_changes = 150,
    }
    -- https://www.youtube.com/watch?v=w7i4amO_zaE&t=1153s
    -- https://github.com/neovim/nvim-lspconfig/blob/master/test/minimal_init.lua
    -- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig.lua
    -- https://github.com/ThePrimeagen/init.lua/blob/master/after/plugin/lsp.lua
    -- https://blog.codeminer42.com/configuring-language-server-protocol-in-neovim/
    local on_attach = function(client, bufnr)
      --local opts = {buffer = bufnr, remap = false}
      --local opts = { buffer = bufnr, noremap = true, silent = true }
      local opts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename, opts)
      vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action, opts)

      vim.keymap.set('n','gd',vim.lsp.buf.definition, opts)
      vim.keymap.set('n','gi',vim.lsp.buf.implementation, opts)
      vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, opts)
      vim.keymap.set('n','gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n','K',vim.lsp.buf.hover, opts)
    end

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- https://github.com/LuaLS/lua-language-server/wiki/Configuration-File
    -- https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/

    --require'lspconfig'.sumneko_lua.setup{ -- lua deprecated

    -- https://github.com/jdhao/nvim-config/blob/master/lua/config/lsp.lua
    --local fn = vim.fn
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
    

    --[[
    require'lspconfig'.luau_lsp.setup{ -- lua
      capabilities = capabilities,
      on_attach = on_attach,
      flags = lsp_flags,
    }
    ]]
    
    require("lspconfig").rust_analyzer.setup {
      capabilities = capabilities,
      on_attach = on_attach,
      flags = lsp_flags,
      --cmd = {
        --"rustup", "run", "stable", "rust-analyzer"
      --}
    }
  end
}