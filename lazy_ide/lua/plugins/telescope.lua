return {
  "nvim-telescope/telescope.nvim",
  version = "0.1.1",
  keys = {
    {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files"}, --mode normal "\ff" = "<leader>ff" == :Telescope find_files
    {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "live grep"},
    {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "buffers"},
    {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help tags"},
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