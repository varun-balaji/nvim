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
        desc = "NeoTree (root dir)",
      },
      {
        "<leader>fT",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "NeoTree (cwd)",
      },
      { "<leader>t", "<leader>ft", desc = "NeoTree (root dir)", remap = true },
      { "<leader>T", "<leader>fT", desc = "NeoTree (cwd)", remap = true },

      -- Disable default keymaps
      { "<leader>fe", false },
      { "<leader>fE", false },
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
}
