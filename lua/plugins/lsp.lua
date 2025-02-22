-- checkhealth lsp
-- :Mason
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        local function set_lsp_keymaps(bufnr)
            local opts = { buffer = bufnr, silent = true, remap = false }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "<leader>cd", vim.diagnostic.setqflist, opts)
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
        end

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "pylsp",
                "rust_analyzer",
            },
            handlers = {
                function(server_name)
                    if server_name == "lua_ls" then
                        require("lspconfig")[server_name].setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { 'vim' },
                                    },
                                },
                            },
                            on_attach = function(_, bufnr)
                                set_lsp_keymaps(bufnr)
                            end,
                        })
                    else
                        require("lspconfig")[server_name].setup({
                            on_attach = function(_, bufnr)
                                set_lsp_keymaps(bufnr)
                            end,
                        })
                    end
                end,
            },
        })
        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
