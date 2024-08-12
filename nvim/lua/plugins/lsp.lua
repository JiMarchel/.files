return {
  "neovim/nvim-lspconfig",
  -- dependencies = {
  --   "mrcjkb/rustaceanvim",
  --   version = "^4", -- Recommended
  --   lazy = false, -- This plugin is already lazy
  -- },
  opts = {
    inlay_hints = {
      enabled = true,
    },
    setup = {
      rust_analyzer = function()
        return true
      end,
    },
    -- servers = {
    --   rust_analyzer = {
    --     mason = false,
    --   },
    -- },
  },
}
