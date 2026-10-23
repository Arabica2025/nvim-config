local commands = {
    searchf = "files",
    searchtxt = "live_grep",
    buffers = "buffers",
}

vim.api.nvim_create_user_command("Fzf", function(opts)
    local action = commands[opts.args]

    if action then
        require("fzf-lua")[action]()
    else
        vim.notify("Unknown command: " .. opts.args, vim.log.levels.ERROR)
    end
end, {
    nargs = 1,

    -- Autocomplete custom arguments
    complete = function(arglead)
        local matches = {}

        for name, _ in pairs(commands) do
            if vim.startswith(name, arglead) then
                table.insert(matches, name)
            end
        end

        table.sort(matches)
        return matches
    end,
})

local function open_guidebook(filename)
    local guidebook = vim.fn.stdpath("config") .. "/" .. filename
    vim.cmd("tabedit " .. vim.fn.fnameescape(guidebook))
end

vim.api.nvim_create_user_command("Guidebook", function()
    open_guidebook("GUIDEBOOK.md")
end, {
    desc = "Open the Neovim config guidebook",
})

vim.api.nvim_create_user_command("GuidebookKo", function()
    open_guidebook("GUIDEBOOK_KO.md")
end, {
    desc = "Open the Korean Neovim config guidebook",
})
