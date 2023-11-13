return {
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Status (fugitive)" },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>gf", "<cmd>Telescope git_status<CR>", desc = "Changed files" },
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
      { "<leader>gs", false },
    },
  },
}
