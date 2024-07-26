return {

	"nvim-telescope/telescope.nvim",

	branch = "0.1.x",

	dependencies = {

		"nvim-lua/plenary.nvim",

		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

		"nvim-telescope/telescope-live-grep-args.nvim",

		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local telescope = require("telescope")

		local builtin = require("telescope.builtin")

		local actions = require("telescope.actions")

		local mappings = require("telescope.mappings")

		local lga_actions = require("telescope-live-grep-args.actions")

		local lga_shortcuts = require("telescope-live-grep-args.shortcuts")

		telescope.setup({

			defaults = {

				vimgrep_arguments = {

					"rg",

					"--hidden",

					"--no-heading",

					"--with-filename",

					"--line-number",

					"--column",

					"--smart-case",
				},

				path_display = { "truncate" },

				mappings = {

					i = {

						["<C-k>"] = actions.move_selection_previous, -- move to prev result

						["<C-j>"] = actions.move_selection_next, -- move to next result

						["<C-q>"] = actions.send_to_qflist,

						["<C-s>"] = actions.file_split,

						["<C-f>"] = actions.preview_scrolling_down,

						["<C-b>"] = actions.preview_scrolling_up,
					},
				},
			},
			extensions = {
				live_grep_args = {
					auto_quoting = true, -- enable/disable auto-quoting
					-- define mappings, e.g.
					mappings = { -- extend mappings
						i = {
							["<C-u>"] = lga_actions.quote_prompt(),
							["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
							-- freeze the current list and start a fuzzy search in the frozen list
							["<C-o>"] = actions.to_fuzzy_refine,
						},
					},
					-- ... also accepts theme settings, for example:
					-- theme = "dropdown", -- use dropdown theme
					-- theme = { }, -- use own theme spec
					-- layout_config = { mirror=true }, -- mirror preview pane
				},
				quicknote = {

					defaultScope = "CWD",
				},
			},
		})

		local custom_maps = {}

		custom_maps.find_files = function()
			builtin.find_files({

				find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
			})
		end

		telescope.load_extension("fzf")

		telescope.load_extension("quicknote")

		telescope.load_extension("live_grep_args")

		-- set keymaps

		local keymap = vim.keymap -- for brevity

		keymap.set("n", "gtr", builtin.oldfiles, { desc = "[?] Find recently opened files" })

		keymap.set("n", "gtb", builtin.buffers, { desc = "[ ] Find existing buffers" })

		keymap.set("n", "gtgf", builtin.git_files, { desc = "Search [G]it [F]iles" })

		keymap.set("n", "gtf", custom_maps.find_files, { desc = "[S]earch [F]iles" })

		keymap.set("n", "gth", builtin.help_tags, { desc = "[S]earch [H]elp" })

		-- keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })

		keymap.set("n", "gtp", builtin.resume, { desc = "[P]revious [P]icker" })

		keymap.set("n", "gtq", "<cmd>Telescope quickfix<CR>", { desc = "View Quick Fix Menu" })

		keymap.set("n", "gtQ", "<cmd>Telescope quickfixhistory<CR>", { desc = "View Quick Fix History Menu" })

		keymap.set(
			"n",
			"gts",
			require("telescope").extensions.live_grep_args.live_grep_args,
			{ desc = "[S]earch by [G]rep" }
		)

		keymap.set("n", "gtS", lga_shortcuts.grep_word_under_cursor, { desc = "[S]earch Current Word by [G]rep" })

		keymap.set("n", "gtd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })

		keymap.set("n", "gtk", ":Telescope keymaps<CR>", { desc = "[T]elescope keymaps" })

		keymap.set("n", "gt/", function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.

			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({

				winblend = 10,

				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })
	end,
}
