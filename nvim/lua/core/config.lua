local set = vim.o
local g = vim.g

g.mapleader = " "
-- Appearance --
set.nu = true
set.rnu = true
set.termguicolors = false
-- vim.cmd("language en_US")
set.splitright = true
set.splitbelow = true
set.cursorline = true
-- vim.cmd("hi CursorLine cterm=NONE ctermbg=8")
set.wrap = false
set.so = 10
set.siso = 20
set.ruler = false
-- vim.cmd("hi EndOfBuffer guifg=NONE")s
-- set.fillchars = "stl:─,stlnc:─"
-- set.statusline = "%#title#%= %l %(%m %)%t %="

-- Shell --
-- set.shell = "C:/Tools/busybox64.exe bash"
-- set.shell = "cmd"
-- set.shcf = "-c"

-- Config --
set.clipboard = "unnamedplus"
set.fixeol = false
set.completeopt = "menuone,noselect"
-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Tabs --
set.shiftwidth = 2
set.tabstop = 2
set.smartindent = true

-- Search --
set.ignorecase = true
set.smartcase = true
set.showmatch = true
