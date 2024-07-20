local function default_header()
    return {
        "", "", "",
				[[   ___  ___    ________    ________    ___  ___    ________    ________ ]],
				[[  /   \/   \  /   __   \  /   __   \  /   \/   \  /_      _\  /        \]],
				[[ /    /    / /   /_/   / /   / /   / /    /    /   /     /   /         /]],
				[[/         / /     ____/ /   /_/   /  \        / __/     /_  /   /  /  / ]],
				[[\___/____/  \________/  \________/    \______/  \________/  \__/__/__/  ]],
        "", "", ""
    }
end

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { {'nvim-tree/nvim-web-devicons'} },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = default_header(),
				center = {
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Config",
						desc_hl = "String",
						key = "x",
						keymap = "",
						key_hl = "Number",
						action = ":Cfg"
					}
				}
			}
		})
	end
}
