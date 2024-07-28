return {

	"hrsh7th/nvim-cmp",

	event = "InsertEnter",

	dependencies = {

		"hrsh7th/cmp-buffer", -- source for text in buffer

		"hrsh7th/cmp-path", -- source for file system paths

		"hrsh7th/cmp-vsnip",

		"hrsh7th/vim-vsnip",

		"L3MON4D3/LuaSnip", -- snippet engine

		"saadparwaiz1/cmp_luasnip", -- for autocompletion

		"rafamadriz/friendly-snippets", -- useful snippets

		"onsails/lspkind.nvim", -- vs-code like pictograms
	},

	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local lspkind = require("lspkind")

		local has_words_before = function()
			unpack = unpack or table.unpack

			local line, col = unpack(vim.api.nvim_win_get_cursor(0))

			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({

			completion = {

				completeopt = "menu,menuone,preview,noselect",
			},

			snippet = { -- configure how nvim-cmp interacts with snippet engine

				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			mapping = cmp.mapping.preset.insert({

				["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion

				["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion

				["<C-y>"] = cmp.mapping(cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				}, { "i", "c" })),

				["<C-b>"] = cmp.mapping.scroll_docs(-4),

				["<C-f>"] = cmp.mapping.scroll_docs(4),

				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions

				["<C-e>"] = cmp.mapping.abort(), -- close completion window

				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			-- sources for autocompletion

			sources = cmp.config.sources({

				{ name = "path" }, -- file system paths

				{ name = "calc" }, -- source for math calculation

				{ name = "nvim_lsp" }, -- from language server

				{ name = "nvim_lsp_signature_help" }, -- display function signatures with current parameter emphasized

				{ name = "nvim_lua", keyword_length = 2 },

				{ name = "luasnip" }, -- snippets

				{ name = "vsnip", keyword_length = 2 }, -- nvim-cmp source for vim-vnsip

				{ name = "buffer", keyword_length = 2 }, -- text within current buffer
			}),

			window = {

				completion = cmp.config.window.bordered(),

				documentation = cmp.config.window.bordered(),
			},

			-- configure lspkind for vs-code like pictograms in completion menu

			formatting = {

				fields = { "menu", "abbr", "kind" },

				format = lspkind.cmp_format({

					maxwidth = 50,

					ellipsis_char = "...",
				}),
			},
		})
	end,
}
