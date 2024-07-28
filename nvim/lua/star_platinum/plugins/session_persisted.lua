return {
	"olimorris/persisted.nvim",
	-- dependencies = { "nvim-telescope/telescope.nvim" },
	lazy = false,
	config = function()
		require("persisted").setup({
			autoload = true,
		})
		require("telescope").load_extension("persisted")
		vim.keymap.set("n", "<leader>pl", "<cmd>SessionToggle<CR>", { desc = "[P]ersisted Session [L]oad" })
		vim.keymap.set("n", "<leader>ps", "<cmd>SessionSave<CR>", { desc = "[P]ersisted Session [S]ave" })
		vim.keymap.set("n", "<leader>ls", "<cmd>Telescope persisted<CR>", { desc = "[L]oad [S]ession" })
	end,
}
