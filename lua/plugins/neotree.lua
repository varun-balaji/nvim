local root_dir_message = "NeoTree (root dir)"
local cwd_message = "NeoTree (cwd)"
local Util = require("lazyvim.util")

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- Swap to t/T instead of e/E
      {
        "<leader>ft",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = Util.root() })
        end,
        desc = root_dir_message,
      },
      {
        "<leader>fT",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = cwd_message,
      },
      { "<leader>t", "<leader>ft", desc = root_dir_message, remap = true },
      { "<leader>T", "<leader>fT", desc = cwd_message, remap = true },

      -- Disable default keymaps
      { "<leader>fe", false },
      { "<leader>fE", false },
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
}
