return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "antoinemadec/FixCursorHold.nvim",

        "nvim-neotest/neotest-plenary",
        "nvim-neotest/neotest-python",
        "nvim-neotest/neotest-jest",
        "rouge8/neotest-rust",
    },

    config = function()
        local neotest = require("neotest")

        neotest.setup({
            adapters = {
                require("neotest-plenary"),
                require("neotest-python"),
                require("neotest-jest"),
                require("neotest-rust"),
            },
        })

        -- Run nearest test
        vim.keymap.set("n", "<leader>nn", function()
            neotest.run.run()
        end, { desc = "Test: run nearest" })

        -- Run tests in current file
        vim.keymap.set("n", "<leader>nf", function()
            neotest.run.run(vim.fn.expand("%"))
        end, { desc = "Test: run current file" })

        -- vim.keymap.set("n", "<leader>nd", function()
        --     neotest.run.run({strategy = "dap"})
        -- end, { desc = "Test: debug nearest" })

        -- Toggle output panel
        vim.keymap.set("n", "<leader>np", function()
            neotest.output_panel.toggle()
        end, { desc = "Test: toggle output panel" })
    end,
}
