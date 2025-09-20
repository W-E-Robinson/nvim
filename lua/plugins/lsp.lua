-- checkhealth lsp
-- :Mason
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local function set_lsp_keymaps(bufnr)
            local opts = { buffer = bufnr, silent = true }
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "<leader>cd", vim.diagnostic.setqflist, opts)
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, opts)
        end

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "pylsp",
                "rust_analyzer",
                "jsonls",
                "yamlls",
                "gopls",
            },
            handlers = {
                function(server_name)
                    vim.lsp.config("rust_analyzer", {
                        settings = {
                            files = {
                                excludeDirs = {
                                    "target",
                                    "node_modules",
                                    ".git",
                                },
                            },
                            logs = {
                                level = "warn"
                            },
                        },
                        capabilities = capabilities,
                        on_attach = function(_, bufnr)
                            set_lsp_keymaps(bufnr)
                        end,
                    })
                    vim.lsp.config("lua_ls", {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' },
                                },
                            },
                        },
                        capabilities = capabilities,
                        on_attach = function(_, bufnr)
                            set_lsp_keymaps(bufnr)
                        end,
                    })
                    vim.lsp.config(server_name, {
                        capabilities = capabilities,
                        on_attach = function(_, bufnr)
                            set_lsp_keymaps(bufnr)
                        end,
                    })
                    vim.lsp.enable(server_name)
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
    end,
}
