return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()

        vim.lsp.config("*", {
            capabilities = require("blink.cmp").get_lsp_capabilities(),
        })
    end,
}
