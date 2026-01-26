return {
  'W-E-Robinson/nvim-git-blame',
  tag = "v1.0.0", -- uncomment to use a specific version
  config = function()
      require("nvim_git_blame").setup()
      -- Map <leader>bcl to show git info for the current line
      vim.keymap.set("n", "<leader>bcl", vim.cmd.BlameCurrentLine)
  end
}
