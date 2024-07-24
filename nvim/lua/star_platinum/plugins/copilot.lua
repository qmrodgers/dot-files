return {
    "github/copilot.vim",
    lazy = false,
    config = function()
        local keymap = vim.keymap

        keymap.set("n", "<leader>cp", "<cmd>Copilot panel<CR>",
            { noremap = true, silent = true, desc = "Open [C]opilot [P]anel" })
        vim.g.copilot_no_tab_map = true
        vim.api.nvim_set_keymap("i", "<C-'>", "copilot#Accept('<CR>')",
            { silent = true, expr = true, desc = "[C]opilot [C]omplete" })
    end
}
