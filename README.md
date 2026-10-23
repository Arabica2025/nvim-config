# Neovim Configuration

Personal Neovim setup managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Features

- **Completion:** blink.cmp and friendly-snippets
- **File and text search:** fzf-lua
- **File browser:** Neo-tree
- **Markdown preview:** Markview, including common LaTeX math
- **PDF reading:** pdfreader.nvim (rendering requires Kitty or Ghostty)
- **Obsidian integration:** obsidian.nvim
- **Diagnostics:** Trouble and nvim-lspconfig
- **Theme and status UI:** Molokai, lualine.nvim, statuscol.nvim, and nvim-notify
- **Custom command:** `:Fzf searchf`, `:Fzf searchtxt`, or `:Fzf buffers`
- **Guidebooks:** `:Guidebook` opens the English guide; `:GuidebookKo` opens the Korean guide

## Requirements

- Neovim
- Git
- `fzf`, `ripgrep`, and `fd` for fzf-lua features
- Kitty or Ghostty for rendered PDF pages
- Tree-sitter CLI for compiling parsers with the current nvim-treesitter setup

## Setup

Clone the repository into Neovim's configuration directory and start Neovim. The
configuration bootstraps lazy.nvim; use `:Lazy sync` to install and synchronize
plugins.

## Structure

- `init.lua` — Neovim options and plugin-manager bootstrap
- `lua/plugins/` — Plugin specifications
- `lua/config/` — Custom commands
- `lazy-lock.json` — Locked plugin versions
- `GUIDEBOOK.md` and `GUIDEBOOK_KO.md` — English and Korean usage guides
