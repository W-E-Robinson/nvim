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
