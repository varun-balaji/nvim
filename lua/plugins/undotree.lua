return {
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { -- note how they're inverted to above example
      {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
      },
    },
    keys = {
      { "<leader>z", "<cmd>Telescope undo<cr>", desc = "Undo history" },
    },
    -- Testing out side by side diffs
    opts = {
      extensions = {
        undo = {
          -- side_by_side = true,
          -- layout_strategy = "vertical",
          layout_config = {
            preview_width = 0.6,
            -- preview_height = 0.8,
          },
        },
      },
    },
    config = function(_, opts)
      -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
      -- configs for us. We won't use data, as everything is in it's own namespace (telescope
      -- defaults, as well as each extension).
      require("telescope").setup(opts)
      require("telescope").load_extension("undo")
    end,
  },
}
