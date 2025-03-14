return {
    "nvim-zh/colorful-winsep.nvim",
    event = { "WinLeave" },
    config = function()
        require("colorful-winsep").setup({
            smooth = false,
            exponential_smoothing = false,
        })
    end
}
