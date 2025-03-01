return {
    -- 'W-E-Robinson/git-blame',
    'git-blame',
    dev = true,
    dir = "~/projects/git-blame",
    config = function()
        require("git-blame").setup()
        function _G.ReloadPlugin()
            require("lazy").reload("git-blame")
        end

        vim.api.nvim_set_keymap("n", "<leader>r", ":lua ReloadPlugin()<CR>", { noremap = true, silent = true })
    end
}
