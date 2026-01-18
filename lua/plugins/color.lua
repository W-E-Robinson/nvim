return {
    "EdenEast/nightfox.nvim",
    config = function()
        require('nightfox').setup({
            options = {
                dim_inactive = true,
                styles = {
                    comments = "italic",
                }
            }
        });

        vim.opt.guicursor = {
            "n-v-c:block-Cursor",
            "i:ver25",
        }

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                local cs = vim.g.colors_name

                if cs == "duskfox" then
                    vim.api.nvim_set_hl(0, "Cursor", {
                        bg = "grey",
                    })
                elseif cs == "dayfox" then
                    vim.api.nvim_set_hl(0, "Cursor", {
                        fg = "white",
                        bg = "black",
                    })
                end
            end,
        })

        local current_colorscheme = "duskfox"
        vim.cmd(string.format("colorscheme %s", current_colorscheme))

        vim.keymap.set("n", "<leader>ics", function()
            if current_colorscheme == "duskfox" then
                current_colorscheme = "dayfox"
            else
                current_colorscheme = "duskfox"
            end
            vim.cmd(string.format("colorscheme %s", current_colorscheme))
        end)
    end
}
