return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- a prefix with only one mapping down the line shows that leaf directly
    -- (<leader>w -> "wai") instead of making you walk into an empty group
    expand = 1,
    -- prefixes that hold more than one mapping get a label here, otherwise
    -- which-key shows a bare "+prefix" for them
    spec = {
      { "<leader>a", group = "AI/Claude Code" },
      { "<leader>b", group = "Blame/Breakpoint" },
      { "<leader>c", group = "Continue/Diagnostics" },
      { "<leader>d", group = "Debug UI/Delete" },
      { "<leader>g", group = "Git/Comment" },
      { "<leader>h", group = "Horizontal split" },
      { "<leader>i", group = "Interface" },
      { "<leader>m", group = "Markdown/Misc" },
      { "<leader>n", group = "Tests (neotest)" },
      { "<leader>p", group = "Project/Find" },
      { "<leader>s", group = "Substitute/Step" },
      { "<leader>t", group = "Telescope" },
      { "<leader>v", group = "LSP/Vertical split" },
      { "<leader>w", group = "Where am I" },
    },
    expand = 1,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
