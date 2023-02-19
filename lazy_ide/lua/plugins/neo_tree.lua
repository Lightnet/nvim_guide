--neo tree

return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false, --disable plugin
  cmd = "Neotree",
  branch = "v2.x",
  keys = {
    --{"<Leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
    {"<c-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = {
    filesystem = {
      follow_current_file = true,
      hijack_netrw_behavior = "open_current",
    },
  },
}

-- \ft