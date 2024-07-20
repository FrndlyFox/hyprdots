return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require('mini.pairs').setup {
			modes = {	
				command = true,
				termianl = true,
			},
			mappings = {
				['<'] = { action = 'open', pair = '<>', neigh_pattern = '[^\\].' },
				-- ['>'] = { action = 'open', pair = '<>', neigh_pattern = '[^\\].' },
			}
		}

		require("mini.move").setup {
			mappings = {
				left = "<S-j>",
				right = "<S-l>",
				up = "<S-i>",
				down = "<S-k>",

				line_left = "<S-j>",
				line_right = "<S-l>",
				line_up = "<S-i>",
				line_down = "<S-k>",
			}	
		}

		require("mini.surround").setup()
	end 
}
