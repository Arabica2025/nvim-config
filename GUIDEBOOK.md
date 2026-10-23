 Neovim Guidebook

Open this guide from any buffer with `:Guidebook`. It opens in a new tab.

The leader key is **Space**. For example, `<leader>e` means press Space, then `e`.

## Your keymaps

| Keys | Action |
| --- | --- |
| `<leader>ff` | Find files with fzf-lua |
| `<leader>fg` | Search text with fzf-lua |
| `<leader>fb` | Find open buffers with fzf-lua |
| `<leader>e` | Toggle Neo-tree |
| `<leader>xx` | Toggle Trouble diagnostics |
| `<leader>nh` | Show notification history |
| `<leader>nc` | Clear notification history |
| `<leader>m` | Toggle rendered Markdown for the current buffer |

### Markdown and LaTeX

- `markview.nvim` renders Markdown inline, including common LaTeX math. Use `<leader>m` or `:Markview toggle` to switch rendering for the current buffer.
- LaTeX math is rendered with Neovim text symbols; it is not a full typeset PDF or browser-quality math layout.

### Completion

- In insert mode, Blink shows completion suggestions as you type.
- Use Up/Down to move through suggestions, `Ctrl-y` to accept, `Ctrl-e` to dismiss, and `Ctrl-Space` to open the menu.
- On the command line, type `:` and use Up/Down to select a suggestion; Enter accepts and runs it. `/` and `?` offer buffer text suggestions.
- `friendly-snippets` supplies snippet suggestions to Blink.

## Neo-tree

Open it with `<leader>e` or `:Neotree toggle`. Focus the tree with `Ctrl-w h`; focus the file window with `Ctrl-w l`.

| Key | Action |
| --- | --- |
| `Enter` | Open a file or expand/collapse a directory |
| `Backspace` | Go to the parent directory |
| `H` | Toggle hidden files |
| `a` | Add a file or directory; end a directory name with `/` |
| `d` | Delete the selected file or directory |
| `T` | Move the selected item to trash |
| `u` | Undo a trash operation |
| `r` | Rename |
| `?` | Show Neo-tree's key help |

## fzf-lua

Use the keymaps above or these commands:

- `:Fzf searchf` — find files
- `:Fzf searchtxt` — search file contents
- `:Fzf buffers` — find open buffers

fzf-lua is your general picker. Telescope is installed only as a dependency for PDFreader.

## PDF reading

PDFreader displays the original rendered pages when Neovim runs inside Kitty or Ghostty:

- Open a PDF with `:edit /path/to/file.pdf`.
- `n` / `p`: next / previous page.
- `z` / `q`: zoom in / out; `e`: reset zoom.
- `:PDFReader setViewMode standard`, `dark`, or `text` changes the display mode.
- Other commands include `:PDFReader setPage 3`, `:PDFReader showToc`, and `:PDFReader showBookmarks`.
- `:PDFReader showRecentBooks` opens the recent-PDF picker.

Apple Terminal does not support PDFreader's image rendering; use Ghostty or Kitty for rendered pages. Poppler, ImageMagick, and Ghostscript are installed for PDF processing.

## Other plugins

| Plugin | What it does |
| --- | --- |
| `blink.cmp` | Insert-mode and command-line completion |
| `friendly-snippets` | Snippet collection used by Blink |
| `nvim-treesitter` | Tree-sitter parsing and highlighting where a parser is installed |
| `markview.nvim` | Inline Markdown preview, including common LaTeX math |
| `nvim-lspconfig` | Language-server configuration support |
| `mason.nvim` | Installs language servers and developer tools; open `:Mason` |
| `mason-lspconfig.nvim` | Connects Mason-installed servers to Neovim's LSP |
| `neo-tree.nvim` | File tree |
| `fzf-lua` | File, text, and buffer pickers |
| `telescope.nvim` | Picker dependency used by PDFreader |
| `pdfreader.nvim` | Renders PDF pages in Kitty or Ghostty |
| `trouble.nvim` | Diagnostics and other lists |
| `obsidian.nvim` | Obsidian vault integration; uses the currently open vault |
| `lualine.nvim` | Status line |
| `statuscol.nvim` | Line-number, fold, and sign columns |
| `nvim-notify` | Notification display and history |
| `molokai` | Colorscheme |
| `nvim-web-devicons` | File icons |
| `plenary.nvim`, `nui.nvim`, `snacks.nvim` | Shared plugin libraries and image support |
| `lazy.nvim` | Plugin manager |

No language servers are selected in this config yet. Use `:Mason` to install one for the languages you work with.

## Neovim basics

### Files, buffers, and tabs

- `:edit path/to/file` opens a file.
- `:ls` lists buffers; `:bnext` and `:bprevious` switch buffers; `:buffer 3` selects buffer 3; `:bdelete` closes a buffer.
- `:vsplit path/to/file` opens a file side by side; `:split path/to/file` opens it below.
- `Ctrl-w h/j/k/l` moves between split windows; `Ctrl-w c` closes the current split.
- `:tabnew` creates a tab page; `gt` and `gT` move between tab pages; `:tabclose` closes the current tab page.

### Editing and searching

- `:write` or `:w` saves; `:quit` or `:q` closes; `:wq` saves and closes; `:q!` closes without saving.
- `u` undoes; `Ctrl-r` redoes.
- `/word` searches forward; `?word` searches backward; `n` and `N` move between matches.
- `:help command` opens Neovim help for a command; `:checkhealth` reports environment and plugin health.
