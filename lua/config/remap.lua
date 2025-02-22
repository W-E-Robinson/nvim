vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-c>", ":wqa<ENTER>")
vim.keymap.set("i", "<C-c>", ":wqa<ENTER>")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("v", "<leader>pp", "\"*y")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("i", "<C-f>", "<Esc>A<Space>{<Esc>o}<Esc>O")

vim.keymap.set("n", "<leader>sg", [[:%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>]])
vim.keymap.set("n", "<leader>sc", [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]])

vim.keymap.set("n", "<leader>/", "/<C-r><C-w><ENTER>")

vim.keymap.set("n", "<leader>H", ":Hex<ENTER>")
vim.keymap.set("n", "<leader>V", ":Vex<ENTER>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>mir", function()
    require("cellular-automaton").start_animation("make_it_rain")
end)
