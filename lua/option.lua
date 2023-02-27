vim.g.encoding = "UTF-8"
vim.opt.fileencoding = "utf-8"

-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.opt.number = true

-- 高亮所在行
vim.opt.cursorline = true

vim.wo.signcolumn = "yes"

vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

vim.o.background = "dark"
vim.opt.termguicolors = true

vim.o.list = true
--vim.o.listchars = "space:·"

vim.o.showtabline = 2

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

--vim.o.list = true
--vim.o.listchars = "space: "

vim.o.guifont = "source Code Pro:h14"
vim.opt.linespace = 0

------ neovide 配置
-- 全屏
vim.g.neovide_fullscreen = false
-- 显示帧时间图
vim.g.neovide_profiler = false
vim.g.neovide_input_use_logo = true

vim.g.neovide_cursor_animation_length = 0.10

-- vim.g.neovide_cursor_vfx_mode = "ripple"

-- vim.g.neovide_cursor_vfx_mode = "wireframe"
vim.g.neovide_cursor_vfx_mode = "sonicboom"

