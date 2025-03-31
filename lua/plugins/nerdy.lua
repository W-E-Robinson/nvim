-- https://github.com/2KAbhishek/nerdy.nvim
-- see README in above to update glyphs
return {
    '2kabhishek/nerdy.nvim',
    dependencies = {
        'folke/snacks.nvim',
    },
    config = function()
        vim.keymap.set("n", "<leader>f,", vim.cmd.Nerdy)
    end
}
