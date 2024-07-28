local harpoon_ui = require("harpoon.ui")

local harpoon_mark = require("harpoon.mark")

local harpoon_term = require("harpoon.term")

vim.keymap.set("n", "gh", function()
	harpoon_ui.toggle_quick_menu()
end)

-- Add current file to harpoon

vim.keymap.set("n", "<leader>a", function()
	harpoon_mark.add_file()
end)

-- Remove current file from harpoon

vim.keymap.set("n", "<leader>r", function()
	harpoon_mark.rm_file()
end)

-- Remove all files from harpoon

-- Quickly jump to harpooned files

vim.keymap.set("n", "<leader>1", function()
	harpoon_ui.nav_file(1)
end)

vim.keymap.set("n", "<leader>2", function()
	harpoon_ui.nav_file(2)
end)

vim.keymap.set("n", "<leader>3", function()
	harpoon_ui.nav_file(3)
end)

vim.keymap.set("n", "<leader>4", function()
	harpoon_ui.nav_file(4)
end)

vim.keymap.set("n", "<leader>5", function()
	harpoon_ui.nav_file(5)
end)

-- Quickly jump to harpooned files

vim.keymap.set("n", "<leader>6", function()
	harpoon_ui.nav_file(6)
end)

vim.keymap.set("n", "<leader>7", function()
	harpoon_ui.nav_file(7)
end)

vim.keymap.set("n", "<leader>8", function()
	harpoon_ui.nav_file(8)
end)

vim.keymap.set("n", "<leader>9", function()
	harpoon_ui.nav_file(9)
end)

-- Quickly jump to terminals
vim.keymap.set("n", "<leader>t1", function()
	harpoon_term.gotoTerminal(1)
end)

vim.keymap.set("n", "<leader>t2", function()
	harpoon_term.gotoTerminal(2)
end)

vim.keymap.set("n", "<leader>t3", function()
	harpoon_term.gotoTerminal(3)
end)

vim.keymap.set("n", "<leader>t4", function()
	harpoon_term.gotoTerminal(4)
end)

vim.keymap.set("n", "<leader>t5", function()
	harpoon_term.gotoTerminal(5)
end)

-- Quickly jump to harpooned files

vim.keymap.set("n", "<leader>t6", function()
	harpoon_term.gotoTerminal(6)
end)

vim.keymap.set("n", "<leader>t7", function()
	harpoon_term.gotoTerminal(7)
end)

vim.keymap.set("n", "<leader>t8", function()
	harpoon_term.gotoTerminal(8)
end)

vim.keymap.set("n", "<leader>t9", function()
	harpoon_term.gotoTerminal(9)
end)
