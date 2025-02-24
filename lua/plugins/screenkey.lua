-- checkhealth screenkey
return {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*",
    config = function()
        require("screenkey").setup({
            win_opts = {
                row = vim.o.lines - vim.o.cmdheight - 1,
                col = vim.o.columns - 1,
                relative = "editor",
                anchor = "SE",
                width = 50,
                height = 1,
                border = "single",
                title = "Screenkey",
                title_pos = "center",
                style = "minimal",
                focusable = false,
                noautocmd = false,
            },
            compress_after = 3,
            clear_after = 5,
            show_leader = false,
            group_mappings = true,
            keys = {
                ["<TAB>"] = "Tab",
                ["<CR>"] = "Cr",
                ["<ESC>"] = "Esc",
                ["<SPACE>"] = "␣",
                ["<BS>"] = "Bs",
                ["<DEL>"] = "Del",
                ["<INSERT>"] = "Ins",
                ["CTRL"] = "Ctrl",
                ["<LEFT>"] = "Le",
                ["<RIGHT>"] = "Ri",
            },
        })

        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                vim.cmd("Screenkey")
            end,
        })

        -- toggles screenkey display
        vim.keymap.set('n', '<leader>sk', '<cmd>Screenkey<CR>', { noremap = true, silent = true })
    end
}
