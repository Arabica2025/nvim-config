return {
    "ibhagwan/fzf-lua",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        defaults = {
            file_icons = true,
            color_icons = true,
            git_icons = true,
        },
    },

    keys = {
        {
            "<leader>ff",
            "<cmd>fzf searchf<CR>",
            desc = "Find files",
        },
        {
            "<leader>fg",
            "<cmd>fzf searchtxt<CR>",
            desc = "Search text",
        },
        {
            "<leader>fb",
            "<cmd>fzf buffers<CR>",
            desc = "Find buffers",
        },
    },
}
