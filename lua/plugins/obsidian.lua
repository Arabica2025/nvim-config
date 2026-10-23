local function get_workspaces()
    local config_path = vim.fn.expand("~/Library/Application Support/obsidian/obsidian.json")
    local ok, lines = pcall(vim.fn.readfile, config_path)
    if not ok or #lines == 0 then
        return {}
    end

    local decoded, config = pcall(vim.json.decode, table.concat(lines, "\n"))
    if not decoded or type(config.vaults) ~= "table" then
        return {}
    end

    local vaults = {}
    local open_vaults = {}
    for _, vault in pairs(config.vaults) do
        if type(vault.path) == "string" and vim.fn.isdirectory(vault.path) == 1 then
            local workspace = {
                name = vim.fn.fnamemodify(vault.path, ":t"),
                path = vault.path,
            }
            table.insert(vaults, workspace)
            if vault.open then
                table.insert(open_vaults, workspace)
            end
        end
    end

    table.sort(vaults, function(a, b)
        return a.path < b.path
    end)
    return #open_vaults > 0 and open_vaults or vaults
end

local workspaces = get_workspaces()

return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    cond = #workspaces > 0,
    opts = {
        legacy_commands = false,
        workspaces = workspaces,
        checkbox = {
            order = { " ", "~", "!", ">", "x" },
        },
    },
}
