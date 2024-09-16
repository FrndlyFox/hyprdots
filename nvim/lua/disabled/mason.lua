return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			ui = {
				border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
				height = 0.8,
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				},
				keymaps = {
					install_package = "I",
				}
			}
		})
	end
}
