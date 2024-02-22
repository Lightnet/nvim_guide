local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end
--key_mapper('', '<up>', '<nop>')

--vim.keymap.set('n','<leader>h',':nohlsearch<CR>')
-- map leader to <Space>
--vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
--vim.g.mapleader = " "
--vim.g.maplocalleader = ' '
--vim.keymap.set('n','<leader>h',':nohlsearch<CR>')

