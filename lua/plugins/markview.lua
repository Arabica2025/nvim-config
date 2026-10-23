return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    config = function()
        require("markview").setup({})

        vim.keymap.set("n", "<leader>m", "<cmd>Markview toggle<cr>", {
            desc = "Toggle rendered Markdown",
        })
    end,
}
