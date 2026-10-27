return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    opts = {
        keymap = {
            preset = "default",
            ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
            ["<Space>"] = {
                function(cmp)
                    if cmp.is_menu_visible() and cmp.get_selected_item() then
                        return cmp.accept({
                            callback = function()
                                vim.api.nvim_feedkeys(" ", "n", false)
                            end,
                        })
                    end
                    return false
                end,
                "fallback",
            },
        },
        completion = {
            documentation = { auto_show = true },
            list = {
                selection = {
                    preselect = false,
                    auto_insert = true,
                },
            },
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        cmdline = {
            enabled = true,
            keymap = {
                preset = "cmdline",
                ["<Tab>"] = { "select_next", "fallback" },
                ["<Space>"] = {
                    function(cmp)
                        if cmp.is_menu_visible() and cmp.get_selected_item() then
                            return cmp.accept({
                                callback = function()
                                    vim.api.nvim_feedkeys(" ", "n", false)
                                end,
                            })
                        end
                        return false
                    end,
                    "fallback",
                },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<CR>"] = { "accept_and_enter", "fallback" },
            },
            sources = { "cmdline", "buffer" },
            completion = {
                menu = { auto_show = true },
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = true,
                    },
                },
            },
        },
    },
}
