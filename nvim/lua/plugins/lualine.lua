return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
		-- cond = false,
		config = function()
			local theme = require("themes.lualine")
			require("lualine").setup({
					options = {
					theme = theme,
					disabled_filetypes = {
						statusline = { "NvimTree", "dashboard", "no-neck-pain" },
					},
					component_separators = { left = '|', right = '|'},
				}
			})
		end
}
