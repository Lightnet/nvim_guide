-- https://github.com/ThePrimeagen/init.lua/blob/master/after/plugin/telescope.lua

return {
  'nvim-telescope/telescope.nvim',
  disable = false,
  requires ={
    'nvim-lua/plenary.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    require("telescope").load_extension("notify")
  end
}