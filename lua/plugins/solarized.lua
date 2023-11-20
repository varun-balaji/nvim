-- Solarized
return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    name = "solarized",
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
