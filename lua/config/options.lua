-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local bo = vim.bo
local g = vim.g

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
bo.softtabstop = 4

-- Activating the autoformating by default
g.autoformat = true
