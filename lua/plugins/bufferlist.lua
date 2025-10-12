return {
    "EL-MASTOR/bufferlist.nvim",
    lazy = true,
    cmd = "BufferList",
    keys = {
        { "<leader>l", ":BufferList<CR>", desc = "Open bufferlist" },
    },
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        keymap = {
            close_buf_prefix = "c",
            force_close_buf_prefix = "f",
            save_buf = "s",
            visual_close = "d",
            visual_force_close = "f",
            visual_save = "s",
            multi_close_buf = "m",
            multi_save_buf = "w",
            save_all_unsaved = "a",
            close_all_saved = "d0",
            toggle_path = "p",
            close_bufferlist = "q",
        },
        width = 100,
        icons = {
            prompt = "",
            save_prompt = "󰆓 ",
            line = "▎",
            modified = "󰝥",
        },
        top_prompt = true,
        show_path = true,
    },
}
