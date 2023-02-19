-- https://github.com/romgrk/barbar.nvim
-- https://github.com/romgrk/barbar.nvim/issues/353

-- bufferline.nvim\lua\bufferline\config.lua

return {
  'romgrk/barbar.nvim',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    {"akinsho/bufferline.nvim", version = "1.4.1"},
  },
  config = function()
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
    require('bufferline').setup({
      options = {
        animation = true,
        auto_hide = false,
        tabpages = true,
        closable = true,
        clickable = true,
        hide = {extensions = false, inactive = false},
        highlight_alternate = false,
        highlight_visible = true,
        indicator = {
          style = "icon",
          icon = "|+"
        },
        highlight_alternate = false,
        highlight_visible = true,
        icons = true,
        icon_custom_colors = false,

        modified_icon = "●",
        buffer_close_icon = "x",
        --close_command = "Bdelete %d",
        close_icon = "x",
        left_trunc_marker = "(",
        --right_mouse_command = "Bdelete! %d",
        right_trunc_marker = ")",
        icon_separator_active = '<',
        icon_separator_inactive = '<',
        show_close_icon = false,
        show_tab_indicators = true,
        --numbers = "ordinal",
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },

        --insert_at_end = false,
        --insert_at_start = false,
        --maximum_padding = 1,
        --minimum_padding = 1,
        maximum_length = 30,
        --semantic_letters = true,
        no_name_title = nil,

        --max_name_length = 15,
        --max_prefix_length = 6,
        --diagnostics = "nvim_lsp",
        --show_buffer_icons = true,
        --show_buffer_close_icons = false,
        --show_close_icon = false,
        --persist_buffer_sort = true,
        --enforce_regular_tabs = true,
        --diagnostics_indicator = function(count, level)
          --local icon = level:match("error") and "" or ""
          --return icon .. count
        --end,
        },
      }
    )
    


    --[[
    require('bufferline').setup({
      options={
        animation = true,
        tabpages = true,
        closable = true,
        clickable = true,
        highlight_alternate = false,
        hide = {extensions = false, inactive = false},
        icons = true,

        highlight_inactive_file_icons = false,
        highlight_visible = true,


        icon_custom_colors = false,
        icon_separator_active = '( ',
        icon_separator_inactive = '( ',
        icon_close_tab = 'x',
        icon_close_tab_modified = '●',
        icon_pinned = 'T',
        semantic_letters = true,
        letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
      },
      --icon_close_tab = 'x',
      --no_name_title = nil,
    })
    --]]
  end
}