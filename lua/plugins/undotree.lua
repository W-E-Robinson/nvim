return {
    "mbbill/undotree",

    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SplitWidth = 45
        vim.g.undotree_DiffpanelHeight = 13
        vim.g.undotree_SetFocusWhenToggle = 1
    end
}
