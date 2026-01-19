-- ~/.config/nvim/lua/user/options.lua
local opt = vim.opt

-- 1. 启用真彩色（确保字体/图标颜色渲染正常，LazyVim推荐）
opt.termguicolors = true

-- 2. 设置字体相关（可选，主要用于GUI版Neovim；终端版依赖终端配置，此处做兼容）
-- 若你使用GUI版Neovim（如nvim-qt），直接指定字体名称
opt.guifont = "DepartureMono Nerd Font:h12" -- 格式：字体名:h字体大小

-- 3. 可选：调整字符间距，避免字体重叠
opt.ambiwidth = "double" -- 双字节字符宽度适配
opt.tabstop = 4 -- 制表符宽度，配合字体显示更整齐
