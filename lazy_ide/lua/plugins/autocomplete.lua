-- https://github.com/hrsh7th/nvim-cmp/
-- https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/

-- https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
-- https://vi.stackexchange.com/questions/13328/is-it-possible-to-map-c-s-space-in-neovim
-- https://github.com/hrsh7th/nvim-cmp/ need set up key binds

--https://github.com/syl20bnr/spacemacs/issues/5283
-- https://neovim.discourse.group/t/how-do-i-use-space-as-the-leader-in-visual-mode/916
-- https://www.youtube.com/watch?v=h4g0m0Iwmys
--[[

SPC stands for spacebar?
--]]

return {
  'hrsh7th/nvim-cmp',
  enabled = true,
  keys = {
    --{'<c-s>', "<cmd>lua print('hello')<cr>", desc = "CMD Down"},
    --{'<c-d>', "<cmd>lua require('cmp').mapping.scroll_docs(-4)<cr>", desc = "CMD Down"},
    --{'<c-f>', "<cmd>lua require('cmp').mapping.scroll_docs(4)<cr>", desc = "CMD Up"},
    --{'<C-Space>', "<cmd>lua print('hellossss')<cr>", desc = "complete" },
    --{'<c-a>', "<cmd>lua print('hellossss')<cr>", desc = "complete" },
    --{'<c-a>', "<cmd>lua require('cmp').mapping.complete();print('hel')<cr>", desc = "complete" },
    --{'<C-Space>', "<cmd>lua require('cmp').mapping.complete()<cr>", desc = "complete"},
    --{'<C-Space>', "<cmd>lua print('c space')<cr>", desc = "complete"},
    --{'<c-s>', "<cmd>echomsg 'c-space'<cr>", desc = "complete"},
    --{'<c-Space>', "<cmd>lua require('cmp').mapping.complete()<cr>", desc = "complete", mode = "i"},
    --{'<c-Space>', "<Cmd>lua require('cmp').mapping.complete()<CR>", desc = "complete"},
    --{'<CR>', "<Cmd>lua require('cmp').mapping.confirm({ select = true })<CR>", desc = "complete"},
    --{'<C-a>', "<cmd>echomsg 'c-space'<cr>", desc = "complete"},
    --{'<C-a>', "<cmd>lua require('notify')('Hello')<cr>", desc = "complete"},
    --{'<C-a>', "<cmd>lua require('cmp').mapping.complete(); require('notify')('Hello')<cr>", desc = "complete"},
  },
  dependencies={
    'quangnguyen30192/cmp-nvim-ultisnips',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/vim-vsnip',
  },
  config = function()
    --does not work here as it not loaded here
  end,
  init=function()
    -- Set up nvim-cmp.
    local cmp = require'cmp'
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
      },
      
      --mapping = cmp.mapping.preset.insert({
        --['<C-b>'] = cmp.mapping.scroll_docs(-4),
        --['<C-f>'] = cmp.mapping.scroll_docs(4),
        --['<C-Space>'] = cmp.mapping.complete(),
        --['<C-A>'] = cmp.mapping.complete(),
        --['<C-A>'] = require('notify')('Hello'),
        --['<C-e>'] = cmp.mapping.abort(),
        --['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      --}),
      
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
      }, {
        { name = 'buffer' },
      })
      
    })

    
    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })
    
    -- Set up lspconfig.
    --local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    --require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    --require('lspconfig')['rust_analyzer'].setup {
      --capabilities = capabilities
    --}


  end
}