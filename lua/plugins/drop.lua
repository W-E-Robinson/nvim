return {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
        require("drop").setup({
            theme = 'matrix',
            max = 1000,
            screensaver = 1000 * 60 * 1,
        })
    end,
}
