return {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
    keys = {
        { "<leader>mtt", "<cmd>Typr<CR>", desc = "Typr typing practice" },
        { "<leader>mts", "<cmd>TyprStats<CR>", desc = "Typr stats" },
    },
}
