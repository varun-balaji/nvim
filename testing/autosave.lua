local bufnr = 15

vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "hello", "world" })
