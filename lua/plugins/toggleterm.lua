return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup()
        vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>');
        vim.keymap.set('n', '<leader>tl', '<cmd>ToggleTermSendCurrentLine<CR>');
        vim.keymap.set('v', '<leader>tl', '<cmd>ToggleTermSendCurrentLine<CR>');
        vim.keymap.set('v', '<leader>tv', '<cmd>ToggleTermSendVisualSelection<CR>');
    end
}
