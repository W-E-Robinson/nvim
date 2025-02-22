return {
    "rose-pine/neovim",
    name = "rose-pine-moon",
    config = function()
        require('rose-pine').setup({
            dim_inactive_windows = true,
            styles = {
                italic = false,
            },
        });

        vim.cmd("colorscheme rose-pine-moon")
    end
}
