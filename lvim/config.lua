require('config.plugins')
require('config.keybindings')
require('config.terminal')
require('config.colors')

require("tokyonight").setup({
  style = "night",
  sidebars = { "qf", "terminal" }
})
