return {
    "luukvbaal/statuscol.nvim",

    lazy = false,

    config = function()
        local builtin = require("statuscol.builtin")

        -- Editor settings
        vim.opt.number = true
        vim.opt.relativenumber = true
        vim.opt.signcolumn = "yes"
        vim.opt.foldcolumn = "1"
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "󰌵",
                },
            },
        })

        require("statuscol").setup({
            -- Right-align current line number
            relculright = true,

            segments = {
                -- Code folding
                {
                    text = { builtin.foldfunc },
                    click = "v:lua.ScFa",
                },

                -- Diagnostic and Git signs
                {
                    text = { "%s" },
                    click = "v:lua.ScSa",
                },

                -- Line numbers
                {
                    text = { builtin.lnumfunc, " " },
                    click = "v:lua.ScLa",
                },
            },
        })
    end,
}
