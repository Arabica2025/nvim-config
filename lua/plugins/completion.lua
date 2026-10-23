return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    opts = {
        keymap = { preset = "default" },
        completion = {
            documentation = { auto_show = true },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        cmdline = {
            enabled = true,
            keymap = {
                preset = "cmdline",
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<CR>"] = { "accept_and_enter", "fallback" },
            },
            sources = { "cmdline", "buffer" },
            completion = {
                menu = { auto_show = true },
            },
        },
    },
}
