return {
    -- 'W-E-Robinson/git_blame',
    'git_blame',
    dev = true,
    dir = "~/projects/git_blame",
    config = function()
        require("git_blame").setup()
        function _G.ReloadPlugin()
            require("lazy").reload("git_blame")
        end

        vim.keymap.set("n", "<leader>bcl", vim.cmd.BlameCurrentLine)
    end
}
