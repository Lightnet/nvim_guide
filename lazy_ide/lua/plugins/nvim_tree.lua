


return {
  'nvim-tree/nvim-tree.lua',
  enabled = true,
  --event = 'VimEnter',
  dependencies={
    "rcarriga/nvim-notify",
  },
  keys={
    {'<c-n>','<cmd>:NvimTreeToggle<cr>', desc = "NvimTreeToggle"}
  },
  config=function()
    -- empty setup using defaults
    require("nvim-tree").setup({})

    local function open_nvim_tree()
      -- open the tree
      require("nvim-tree.api").tree.open()
      --require('nvim-tree').toggle()
      print("Hello")
      --require('notify')('Hello')
    end
    --require('notify')('Hellosss')

    --vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
    --vim.api.nvim_create_autocmd({ "LazyVimStarted" }, { callback = open_nvim_tree })



    --require('nvim-tree').toggle()
    --[[
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
        mappings = {
          list = {
            { key = "u", action = "dir_up" },
          },
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
    })
    ]]

  end,
  init=function()
    require("nvim-tree.api").tree.open()

  end
}