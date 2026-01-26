return {
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    opts = {}, -- needed even when using default config

    -- recommended: disable vim's auto-folding
    init = function()
        vim.opt.foldlevel = 99
        vim.opt.foldlevelstart = 99

        vim.keymap.set("n", "<leader><Left>", function() require("origami").h() end) -- fold
        vim.keymap.set("n", "<leader><Right>", function() require("origami").l() end) -- unfold
        vim.keymap.set("n", "<leader><Down>", function() require("origami").dollar() end) -- unfold recursively
        vim.keymap.set("n", "<leader><Up>", function() require("origami").caret() end) -- fold recursively
    end,
}
