return {
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Git status" },
      { "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff split" },
      { "<leader>gD", "<cmd>Gvdiffsplit !~<CR>", desc = "Git diff split ~" },
      { "<leader>gb", "<cmd>Git blame<CR>", desc = "Git blame" },
    },
    -- Don't lazy-load. We might want this on startup.
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>gf", "<cmd>Telescope git_status<CR>", desc = "Changed files" },
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Git commits" },
      { "<leader>gs", false },
    },
  },
}
