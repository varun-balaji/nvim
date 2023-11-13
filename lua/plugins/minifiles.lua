return {
  "echasnovski/mini.files",
  opts = {
    windows = {
      width_preview = 80,
    },
  },
  keys = {
    {
      "<leader>fe",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>fE",
      function()
        require("mini.files").open(vim.loop.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
    { "<leader>e", "<leader>fe", desc = "Open mini.files (directory of current file)", remap = true },
    { "<leader>E", "<leader>fE", desc = "Open mini.files (cwd)", remap = true },

    -- Disable default keymaps
    { "<leader>fm", false },
    { "<leader>fM", false },
  },
}
