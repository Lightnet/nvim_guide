

return {
  "rcarriga/nvim-notify",
  --enabled = false,
  config = function()
    require("notify").setup({
      background_colour = "#00000ff",
    })
    
    --local async = require("plenary.async")
    --local notify = require("notify").async

    --async.run(function()
      --notify("Let's wait for this to close").events.close()
      --notify("It closed!")
      --notify("Hello World!")
    --end)
  end
}