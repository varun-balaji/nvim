-- Kanagawa <3
return {
  {
    "rebelot/kanagawa.nvim",
    -- Added to copy LazyVim
    -- lazy = true,
    -- name = "kanagawa",
    -- Commented
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
