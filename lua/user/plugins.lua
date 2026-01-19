-- ~/.config/nvim/lua/user/plugins.lua
return {
  -- 确保nvim-web-devicons启用（LazyVim默认启用，此处显式配置）
  "nvim-tree/nvim-web-devicons",
  opts = {
    -- 图标默认配置，依赖Nerd Font提供的图标集
    default = true,
    -- 可选：自定义特定文件类型的图标，适配你的字体
    icons = {
      lua = { icon = "", color = "#4E99DF", name = "Lua" },
      python = { icon = "", color = "#3776AB", name = "Python" },
    },
  },
}
