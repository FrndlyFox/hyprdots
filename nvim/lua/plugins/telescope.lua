return {
	"nvim-telescope/telescope.nvim", branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		require("telescope").setup({
			pickers = {
				find_files = {
					mappings = {
						n = {
							["i"] = actions.move_selection_previous,
							["k"] = actions.move_selection_next,
							["j"] = actions.file_edit,
						},
					}
				},
				live_grep = {
					mappings = {
						n = {
							["i"] = actions.move_selection_previous,
							["k"] = actions.move_selection_next,
							["j"] = actions.file_edit,
						},
					}
				}
			}
		})
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
	end
}
