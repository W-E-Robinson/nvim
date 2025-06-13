-- Need to install regex with nvim-treesitter, as well as the grammar for whichever host language. So for example:
-- :TSInstall regex typescript
return {
    'bennypowers/nvim-regexplainer',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        require('regexplainer').setup({
            mode = 'narrative',
            auto = true,
            display = 'popup',
            mappings = {
                toggle = 'gR',
            }
        })
    end
}
