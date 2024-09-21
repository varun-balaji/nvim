-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.tabstop = 4 -- Number of spaces tabs count for
opt.confirm = false -- Don't confirm to save changes before exiting modified buffer
opt.wrap = true -- Set word wrap
opt.relativenumber = false -- Relative line numbers

-- Fix clipboard issue?
-- opt.clipboard = "unnamedplus"

-- Disable global statusline
-- opt.laststatus = 2

-- Disable LazyVim auto format
-- vim.g.autoformat = false
