local current_file_message = "Oil explorer (current file dir)"
local root_dir_message = "Oil explorer (root dir)"
local Util = require("lazyvim.util")

return {
  {
    "stevearc/oil.nvim",
    opts = {
      keymaps = {
        -- Backspace to go up a directory
        ["<bs>"] = "actions.parent",
        -- All the close options
        ["q"] = "actions.close",
        ["<leader>o"] = "actions.close",
        ["<leader>O"] = "actions.close",
        ["<leader>fo"] = "actions.close",
        ["<leader>fO"] = "actions.close",
        ["<esc>"] = "actions.close",
        -- Fix split opening keymaps
        ["<C-h>"] = false,
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-s>"] = "actions.select_split",
        -- Add preview scrolling
        ["<C-d>"] = "actions.preview_scroll_down",
        ["<C-u>"] = "actions.preview_scroll_up",
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- Invoke oil.nvim
    keys = {
      {
        "<leader>fo",
        function()
          -- require("oil").open(vim.api.nvim_buf_get_name(0))
          require("oil").open()
        end,
        desc = current_file_message,
      },
      {
        "<leader>fO",
        function()
          require("oil").open(Util.root())
        end,
        desc = root_dir_message,
      },
      { "<leader>o", "<leader>fo", desc = current_file_message, remap = true },
      { "<leader>O", "<leader>fO", desc = root_dir_message, remap = true },
    },
  },
}
