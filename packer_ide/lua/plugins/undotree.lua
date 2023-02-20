return {
  'mbbill/undotree', --github > user/repo
  disable = false,
  config = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end
}