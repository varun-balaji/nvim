return {
  -- Disable unwanted plugins
  { "akinsho/bufferline.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  {
    "folke/flash.nvim",
    keys = {
      -- Keep the default vim keymap for s(ubstitution)
      { "s", false },
    },
  },
}
