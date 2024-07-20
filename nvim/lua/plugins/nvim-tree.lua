local function mappings(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'j', api.node.open.edit,        opts('Open'))
  vim.keymap.set('n', 'l', "<Nop>",                  opts('Unmap'))
end

return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			on_attach = mappings,
			view = {
				width = 36,
				float = {
					enable = true,
					open_win_config = {
						width = 34,
						row = 0,
						col = 0
					},
				}
			}
		})
	end
}
