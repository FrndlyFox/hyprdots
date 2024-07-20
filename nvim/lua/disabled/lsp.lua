local config = function()
-- require("lspconfig").lua-language-server.setup{}
end

return {
	{
		'neovim/nvim-lspconfig',
		config = config
	},
}
