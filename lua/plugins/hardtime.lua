local hint_win
local function show_hint(text)
    if hint_win and vim.api.nvim_win_is_valid(hint_win) then
        vim.api.nvim_win_close(hint_win, true)
    end

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { text })
    local width = math.min(#text, vim.o.columns - 4)
    hint_win = vim.api.nvim_open_win(buf, false, {
        relative = "editor",
        row = 1,
        col = vim.o.columns - width - 2,
        width = width,
        height = 1,
        style = "minimal",
        border = "rounded",
        title = " Hardtime ",
        focusable = false,
        noautocmd = true,
    })
    vim.wo[hint_win].winhighlight = "Normal:DiagnosticWarn,FloatBorder:DiagnosticWarn"

    local win = hint_win
    vim.defer_fn(function()
        if vim.api.nvim_win_is_valid(win) then
            vim.api.nvim_win_close(win, true)
        end
    end, 3000)
end

return {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    keys = {
        { "<leader>iht", "<cmd>Hardtime toggle<CR>", desc = "Toggle hardtime" },
    },
    opts = {
        disable_mouse = false,
        -- warn about bad habits but never block the key
        restriction_mode = "hint",
        -- keep arrow keys usable (empty table = not disabled)
        disabled_keys = {
            ["<Up>"] = {},
            ["<Down>"] = {},
            ["<Left>"] = {},
            ["<Right>"] = {},
        },
        callback = show_hint,
    },
}
