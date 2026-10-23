# Neovim Configuration

My personal Neovim configuration for development on Ubuntu WSL2, managed with lazy.nvim.

## Features

- **Plugin management:** lazy.nvim
- **Color scheme:** Gruvbox
- **Status line:** lualine.nvim
- **Status column:** statuscol.nvim
- **File and text search:** fzf-lua
- **Autocompletion:** nvim-cmp
- **Notifications:** nvim-notify
- **Custom commands and keymaps:** Lua-based configuration

## Installation

### Prerequisites

- Neovim (compatible with installed plugins)
- Git
- fzf
- ripgrep
- fd

### Setup

Clone this repository into the Neovim configuration directory:

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

The lazy.nvim bootstrap configuration will install the plugin manager if it is missing. Run `:Lazy sync` to install and synchronize plugins.

## Configuration Structure

- `init.lua` — Main configuration entry point
- `lua/plugins/` — Individual plugin configurations
- `lua/config/` — Custom commands, keymaps, and editor options
- `lazy-lock.json` — Locked plugin versions

## License

Personal configuration. See repository license if added.

