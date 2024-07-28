return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader><leader>g", vim.cmd.G, { desc = "Opens Fugitive [G]it" })
		keymap.set("n", "<leader>gc", "<cmd>Git ", { desc = "Begins [G]it [C]ommand in Prompt" })
	end,
}
