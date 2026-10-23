vim.api.nvim_create_user_command("Fzf", function(opts)
    local commands = {
        searchf = "files",
        searchtxt = "live_grep",
        buffers = "buffers",
    }

    local action = commands[opts.args]

    if action then
        require("fzf-lua")[action]()
    else
        print("Unknown command: " .. opts.args)
    end
end, {
    nargs = 1,
})
