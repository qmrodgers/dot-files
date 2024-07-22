return {
    'rmagatti/auto-session',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require('auto-session').setup({
            log_level = 'error',
            auto_session_enable_last_session = true,
            auto_session_enabled = true,
            auto_save_enabled = true,
            auto_restore_enabled = true,


            session_lens = {
                load_on_setup = true,
                theme_conf = { border = true },
                previewer = false,
                buftypes_to_ignore = {},
            },

        })
        vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Auto [S]ession [R]estore" })
        vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "[S]ave [S]ession" })
        vim.keymap.set("n", "<leader>sl", require("auto-session.session-lens").search_session,
            { noremap = true, desc = "[S]ession [L]ist" })
    end
}
