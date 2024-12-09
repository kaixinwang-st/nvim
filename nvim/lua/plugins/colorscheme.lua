-- return {
--   -- add github theme
--   { "projekt0n/github-nvim-theme" },
--
--   {
--     "projekt0n/github-nvim-theme",
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require("github-theme").setup({
--         -- ...
--       })
--       vim.cmd("colorscheme github_dark_dimmed")
--     end,
--   },
-- }
return {
  -- Add Tokyonight theme
  -- { "folke/tokyonight.nvim" },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- Tokyonight configuration
  --     require("tokyonight").setup({
  --       style = "storm", -- Choose between "storm", "night", "day"
  --       -- Further customization options
  --       transparent = true, -- Enable transparent background
  --       italic_comments = true, -- Italic comments
  --       italic_keywords = true, -- Italic keywords
  --       -- More options can be configured according to the documentation
  --     })
  --   end,
  -- },
  -- {
  --   "yorumicolors/yorumi.nvim",
  -- },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "dark", -- Options: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
      })
      require("onedark").load()
      vim.cmd("colorscheme onedark")
    end,
  },
}
