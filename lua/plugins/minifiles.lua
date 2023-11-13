local current_file_message = "Open mini.files (current file dir)"
local root_dir_message = "Open mini.files (root dir)"
local Util = require("lazyvim.util")

return {
  "echasnovski/mini.files",
  opts = {
    windows = {
      -- Only show 3 columns
      max_number = 3,
      width_preview = 80,
    },
    -- TODO Need better mappings
  },
  keys = {
    {
      "<leader>fe",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = current_file_message,
    },
    {
      "<leader>fE",
      function()
        -- TODO: Figure out if we want root dir or cwd
        -- require("mini.files").open(vim.loop.cwd(), true)
        require("mini.files").open(Util.root(), true)
      end,
      desc = root_dir_message,
    },
    { "<leader>e", "<leader>fe", desc = current_file_message, remap = true },
    { "<leader>E", "<leader>fE", desc = root_dir_message, remap = true },

    -- Disable default keymaps
    { "<leader>fm", false },
    { "<leader>fM", false },
  },
}
