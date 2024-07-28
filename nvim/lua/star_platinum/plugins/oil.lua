return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = { "icon" },
			keymaps = {
				["<C-h>"] = false,
				["<M-h>"] = "actions.select_split",
			},
			view_options = {
				hidden = true,
			},
		})

		-- vim.api.nvim_create_autocmd("FileType", {
		--     pattern = "oil",
		--     callback = function()
		--         vim.opt_local.colorcolumn = ""
		--     end,
		-- })

		vim.keymap.set("n", "go", "<Cmd>Oil<CR>", { desc = "[G]o to [O]il parent directory" })
		vim.keymap.set("n", "<leader>go", require("oil").toggle_float, { desc = "Go to parent directory in float" })
	end,
}
