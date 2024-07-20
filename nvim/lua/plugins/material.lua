return {
	'marko-cerovac/material.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		local colors = require("material.colors")
		require("material").setup({
			plugins = {
				"dashboard",
				"nvim-tree",
				"nvim-web-devicons"
			},
			disable = {
				eob_lines = true
			},
			custom_highlights = {
				Search = { bg = colors.editor.selection },
				IncSearch = { fg = colors.editor.bg, bg = colors.editor.accent, bold = true }
			}
		})
		vim.cmd("colorscheme material-oceanic")
		-- vim.cmd("hi EndOfBuffer guifg=bg")
	end
}
