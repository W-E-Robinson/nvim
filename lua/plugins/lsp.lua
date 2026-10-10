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

        -- which-key reads the desc from each mapping, so every keymap gets its own
        -- opts table; mutating a shared one would leak the last desc into all of them
        local function desc(opts, text)
            return vim.tbl_extend("force", opts, { desc = text })
        end

        local function set_lsp_keymaps(bufnr)
            local opts = { buffer = bufnr, silent = true }
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, desc(opts, "LSP: Format buffer"))
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, desc(opts, "LSP: Go to definition"))
            vim.keymap.set("n", "gD", function()
                vim.cmd("vsplit")
                vim.lsp.buf.definition()
            end, desc(opts, "LSP: Go to definition in vsplit"))
            vim.keymap.set("n", "K", vim.lsp.buf.hover, desc(opts, "LSP: Hover"))
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, desc(opts, "LSP: Line diagnostics"))
            vim.keymap.set("n", "<leader>cd", vim.diagnostic.setqflist, desc(opts, "LSP: Diagnostics to quickfix"))
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, desc(opts, "LSP: Code action"))
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, desc(opts, "LSP: References"))
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, desc(opts, "LSP: Rename"))
            vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, desc(opts, "LSP: Signature help"))
        end

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                -- "pylsp",
                -- "rust_analyzer",
                "jsonls",
                "yamlls",
                -- "gopls",
                "eslint", -- may need a: npm install -g vscode-langservers-extracted (or similar)
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
