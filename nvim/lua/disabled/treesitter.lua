return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "vim", "lua", "vimdoc", "luadoc", "json" },
		}
		require('nvim-treesitter.install').prefer_git = false
	end,
}
