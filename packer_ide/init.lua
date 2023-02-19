-- https://www.chiarulli.me/Neovim-2/01-options/

-- init start up nvim
-- test build packer manager

--local call = vim.call
--local cmd = vim.cmd
--local Plug = vim.fn['plug#']
--require("core.keymaps")
--require("core.plugins")
--require("core.plugin_config")

---print("Hello world")
--local async = require("plenary.async")
--local notify = require("notify").async

--async.run(function()
	--require("notify").setup({
		--background_colour = "#8A1F1F",
	--})
--notify("Let's wait for this to close").events.close()
  --notify("It closed!")
--end)

--require 'myplugin'
--require 'myplugin'.test()

require'plugins'