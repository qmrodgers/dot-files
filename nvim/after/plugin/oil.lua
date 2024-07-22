vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil",
	callback = function()
		vim.opt_local.colorcolumn = ""
	end,
})

vim.keymap.set("n", "\\", function()
	require("oil").toggle_float()
end)
