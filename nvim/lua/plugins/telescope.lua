return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    -- Tambahkan pola ignore ke konfigurasi yang sudah ada
    local ignored_patterns = {
      "node_modules",
      ".git",
      "target/*",
      "dist/*",
      "vendor/*",
      "%.lock",
      ".next",
    }

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      file_ignore_patterns = ignored_patterns,
    })

    return opts
  end,
}
