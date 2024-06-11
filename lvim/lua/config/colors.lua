
lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg= "#000000", bg = "#DDDDDD", underline = false, bold = false, italic = true })
      end,
    },
  },
}
