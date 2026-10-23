-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Editor behavior
vim.opt.mouse = "a"
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Leader key
vim.g.mapleader = " "

-- Always show the sign column
vim.opt.signcolumn = "yes"

-- Hide code-folding column
vim.opt.foldcolumn = "0"

-- terminal setup
vim.opt.cmdheight = 2

-- Install lazy.nvim automatically
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
    spec = {
        { import = "plugins" },
    },

    performance = {
        rtp = {
            reset = false,
        },
    },
})

require("config.commands")
