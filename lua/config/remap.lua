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

-- closes every split except the one the cursor is in
-- netrw explorers close like anything else, even with no file opened yet
-- if the cursor is in the explorer, the explorer is what survives
-- floats are skipped, so telescope/lsp hover/floating terminals are left alone
-- unsaved changes aren't lost: the split closes but the buffer goes hidden
-- all buffers stay listed, and other tab pages are untouched
local function close_other_splits()
    local current = vim.api.nvim_get_current_win()

    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local is_float = vim.api.nvim_win_get_config(win).relative ~= ""

        if win ~= current and not is_float then
            vim.api.nvim_win_close(win, false)
        end
    end
end

vim.keymap.set("n", "<leader>o", function() close_other_splits() end)

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

vim.keymap.set("n", "<leader>;", ":Lazy update<ENTER>")

-- clones the current file into a new split, cursor position and all
vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<leader>h", "<C-w>s")
