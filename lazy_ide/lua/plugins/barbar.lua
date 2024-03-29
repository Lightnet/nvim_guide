-- https://github.com/romgrk/barbar.nvim
-- https://github.com/romgrk/barbar.nvim/issues/353

-- bufferline.nvim\lua\bufferline\config.lua
-- tab with icons

return {
  'romgrk/barbar.nvim',
  enabled = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    {
      "akinsho/bufferline.nvim",
      --version = "1.4.1"
    },
  },
  init = function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
    map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
    -- Goto buffer in position...
    map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
    map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
    map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
    map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
    map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
    map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
    map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
    map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
    map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
    map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
    -- Pin/unpin buffer
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
    -- Close buffer
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    -- Wipeout buffer
    --                 :BufferWipeout
    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight
    -- Magic buffer-picking mode
    map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
    -- Sort automatically by...
    map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
    map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
    map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
    map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used

    -- https://github.com/romgrk/barbar.nvim
    require('bufferline').setup({
      options = {
        animation = true,
        auto_hide = false,
        tabpages = true,
        closable = true,
        clickable = true,
        diagnostics = false,
        hide = {extensions = false, inactive = false},
        highlight_alternate = false,
        highlight_visible = true,
        --indicator = {
          --style = "icon",
          --icon = "|+"
        --},
        icons = true,
        icon_custom_colors = false,

        -- Configure icons on the bufferline.
        icon_separator_active = '<',
        icon_separator_inactive = '<',
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        icon_pinned = '車',

        insert_at_end = false,
        insert_at_start = false,

        maximum_padding = 1,
        minimum_padding = 1,
        maximum_length = 30,
        
        semantic_letters = true,
        --numbers = "ordinal",
        letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center", padding = 1 } },
        no_name_title = nil,
        },
      }
    )

    vim.api.nvim_create_autocmd({'BufWinLeave', 'BufWipeout'}, {
      callback = function(tbl)
        if vim.bo[tbl.buf].filetype == 'NvimTree' then
          require'bufferline.api'.set_offset(0)
        end
      end
    })

  end
}