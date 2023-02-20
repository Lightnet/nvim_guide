return {
  "nvim-telescope/telescope.nvim",
  --version = "0.1.1",
  keys = {
    {"<leader><space>", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers"}, --mode normal
    {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files"}, --mode normal "\ff" = "<leader>ff" == :Telescope find_files
    {"<leader>?", "<cmd>Telescope oldfiles<cr>", desc = "Telescope live grep"},
    {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep"},
    {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers"},
    {"<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Telescope diagnostics"},
    {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags"},
    {"<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Telescope current buffer fuzzy find"},
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    --local builtin = require('telescope.builtin')
    --vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    --vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    --vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    --vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    --print("Telel")
  end,
}

-- \ft