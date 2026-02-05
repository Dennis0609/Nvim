return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for `snacks` provider.
    ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition" on the type or field.
    }

    -- Required for `opts.events.reload`.
    vim.o.autoread = true
  end,
  keys = {
    { "<leader>a", nil, desc = "AI/Claude Code" },
    { "<leader>ao", function() require("opencode").toggle() end, desc = "Toggle OpenCode", mode = { "n", "t" } },
    { "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, desc = "Ask OpenCode…", mode = { "n", "x" } },
    { "<leader>as", function() require("opencode").select() end, desc = "Execute OpenCode action…", mode = { "n", "x" } },
    { "go", function() return require("opencode").operator("@this ") end, desc = "Add range to OpenCode", expr = true, mode = { "n", "x" } },
    { "goo", function() return require("opencode").operator("@this ") .. "_" end, desc = "Add line to OpenCode", expr = true, mode = "n" },
    { "<S-C-u>", function() require("opencode").command("session.half.page.up") end, desc = "Scroll OpenCode up", mode = "n" },
    { "<S-C-d>", function() require("opencode").command("session.half.page.down") end, desc = "Scroll OpenCode down", mode = "n" },
    { "+", "<C-a>", desc = "Increment under cursor", noremap = true, mode = "n" },
    { "-", "<C-x>", desc = "Decrement under cursor", noremap = true, mode = "n" },
  },
}
