return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    -- Calling mkdp#util#install() here fails with E117: the plugin is lazy-loaded,
    -- so its autoload files aren't on runtimepath when the build task runs.
    -- Invoke the install script directly instead; it no-ops if the binary is current.
    build = function(plugin)
        local package_json = plugin.dir .. "/package.json"
        local version = vim.fn.json_decode(table.concat(vim.fn.readfile(package_json), "")).version
        vim.fn.system({ "bash", plugin.dir .. "/app/install.sh", "v" .. version })
    end,
    keys = {
        {
            "<leader>mp",
            "<cmd>MarkdownPreviewToggle<CR>",
            desc = "Markdown Preview Toggle",
            ft = "markdown",
        },
    },
}
