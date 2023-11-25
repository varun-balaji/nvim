-- Customize formatters
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        injected = { options = { ignore_errors = true } },
        shfmt = {
          -- Set indent value to 2 spaces and indent switch cases
          prepend_args = { "-i", "2", "-ci" },
        },
      },
    },
  },
}
