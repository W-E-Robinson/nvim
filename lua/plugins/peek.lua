return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
            auto_load = false,
            syntax = true,
            theme = 'dark',
            update_on_change = true,
            app = 'webview',
            filetype = { 'markdown' },
            throttle_at = 100000,
            throttle_time = 'auto',
        })
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end
}
