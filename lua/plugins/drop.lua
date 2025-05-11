return {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
        require("drop").setup({
            theme = 'matrix',
            max = 1500,
            screensaver = 1000 * 60 * 3,
        })
    end,
}
