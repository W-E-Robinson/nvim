vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

local function close_all_windows()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })

    for _, b in ipairs(bufs) do
        if b.name:find("%.rs$") then
            print("You have a Rust file in the buffers.")
            return
        end
    end

    vim.cmd("wqa")
end

vim.keymap.set("n", "<C-c>", function() close_all_windows() end)
vim.keymap.set("i", "<C-c>", function() close_all_windows() end)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-f>", "<Space>{<CR>}<Esc>O")

vim.keymap.set("n", "<leader>sg", [[:%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>]])
vim.keymap.set("n", "<leader>sc", [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]])

vim.keymap.set("n", "<leader>/", "/<C-r><C-w><ENTER>")

vim.keymap.set("n", "<leader>H", ":Hex<ENTER>")
vim.keymap.set("n", "<leader>V", ":Vex<ENTER>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

local function where_am_i()
    local file = vim.api.nvim_buf_get_name(0)
    local line_number = vim.api.nvim_win_get_cursor(0)[1]
    local wai = string.format("%s:%s", file, line_number)
    print(wai)
    vim.fn.setreg("+", wai)
end

vim.keymap.set("n", "<leader>wai", function() where_am_i() end)
