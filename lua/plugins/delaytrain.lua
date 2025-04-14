return {
    "ja-ford/delaytrain.nvim",
    config = function()
        require('delaytrain').setup {
            delay_ms = 1000,
            grace_period = 3,
            keys = {
                ['nv'] = { 'h', 'j', 'k', 'l', 'w', 'b', 'W', 'B', 'e', 'E', '.', 'x', 'X' },
            },
        }
    end
}
