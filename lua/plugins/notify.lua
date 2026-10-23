return {
    "rcarriga/nvim-notify",

    lazy = false,

    opts = {
        -- Notification duration (milliseconds)
        timeout = 3000,

        -- Animation style
        stages = "fade_in_slide_out",

        -- Notification appearance
        render = "compact",

        -- Background color
        background_colour = "#000000",
    },
     keys = {
    {
        "<leader>nh",
        "<cmd>Notifications<CR>",
        desc = "Notification history",
    },
    {
        "<leader>nc",
        "<cmd>NotificationsClear<CR>",
        desc = "Clear notification history",
    },
},      

    config = function(_, opts)
        local notify = require("notify")

        notify.setup(opts)

        -- Set as default notification handler
        vim.notify = notify
    end,
}
