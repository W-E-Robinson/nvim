return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("oil").setup({
            default_file_explorer = false,
            columns = {
                "icon",
                "permissions",
                "size",
            },
            view_options = {
                show_hidden = true,
            }
        })

        vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>")
    end
}
