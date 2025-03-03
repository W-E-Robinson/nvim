return {
    {
        "ramilito/winbar.nvim",
        event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("winbar").setup({
                icons = true,
                diagnostics = false,
                buf_modified = true,
                buf_modified_symbol = "●",
            })
        end
    },
}
