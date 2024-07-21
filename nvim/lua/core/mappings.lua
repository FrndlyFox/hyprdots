local map = vim.keymap.set

map({ "n", "v" }, "<Space>", "<Nop>")
map({ "n", "v" }, "h", "i", { noremap = true })
map({ "n", "v" }, "j", "h", { noremap = true })
map({ "n", "v" }, "k", "j", { noremap = true })
map({ "n", "v" }, "i", "k", { noremap = true })

-- Easy windows movement
map({ "n", "v" }, "<C-j>", "<C-w>h", { noremap = true })
map({ "n", "v" }, "<C-l>", "<C-w>l", { noremap = true })
map({ "n", "v" }, "<C-i>", "<C-w>k", { noremap = true })
map({ "n", "v" }, "<C-k>", "<C-w>j", { noremap = true })
map({ "n", "v" }, "<C-q>", "<C-w>q", { noremap = true })

map({ "n", "v" }, "<C-w>j", "<C-w>H", { noremap = true })
map({ "n", "v" }, "<C-w>l", "<C-w>L", { noremap = true })
map({ "n", "v" }, "<C-w>i", "<C-w>K", { noremap = true })
map({ "n", "v" }, "<C-w>k", "<C-w>J", { noremap = true })

map({ "n", "i", "v" }, "<C-=>", "<C-w>+")
map({ "n", "i", "v" }, "<C-->", "<C-w>-")
-- Plugins --
map("n", "<Leader>l", require("lazy.view").show)
map("n", "<Leader>e", function() require("nvim-tree.api").tree.toggle{ find_file = false, update_root = false } end)
map("n", "<Leader>n", require("no-neck-pain").toggle)
map("n", "<Leader>m", require("mason.ui").open)
