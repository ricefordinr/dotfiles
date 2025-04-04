return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},

	-- Belows are the utils that used Tree Sitter
	--(Excl: lsp, telescope (They have their own config file))
	{
		"Wansmer/treesj",
		keys = { "<space>m" },
		dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
		config = function()
			require("treesj").setup({
				use_default_keymaps = false,
				vim.keymap.set("n", "<leader>m", require("treesj").toggle),
			})
		end,
	},
}
