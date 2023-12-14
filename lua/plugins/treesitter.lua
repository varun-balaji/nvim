return {
  "nvim-treesitter/nvim-treesitter",
  keys = {
    { "<c-bs>", desc = "Decrement selection", mode = "x" },
  },
  ---@type TSConfig
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    incremental_selection = {
      keymaps = {
        node_decremental = "<C-bs>",
      },
    },
  },
}
