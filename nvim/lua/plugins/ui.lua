return {
  -- messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      local focused = true
      vim.api.nvim_create_autocmd("FocusGained", {
        callback = function()
          focused = true
        end,
      })
      vim.api.nvim_create_autocmd("FocusLost", {
        callback = function()
          focused = false
        end,
      })
      table.insert(opts.routes, 1, {
        filter = {
          cond = function()
            return not focused
          end,
        },
        view = "notify_send",
        opts = { stop = false },
      })

      opts.commands = {
        all = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {},
        },
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function(event)
          vim.schedule(function()
            require("noice.text.markdown").keys(event.buf)
          end)
        end,
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    -- keys = {
    -- -- 	{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    -- 	{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    -- },
    opts = {
      options = {
        -- mode = "tabs",
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = true,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        -- globalstatus = false,
        theme = "onedark",
      },
    },
  },

  -- fileline
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    config = function()
      local has_helpers, helpers = pcall(require, "incline.helpers")
      local has_navic, navic = pcall(require, "nvim-navic")
      local has_devicons, devicons = pcall(require, "nvim-web-devicons")

      -- 使用默认对比颜色函数
      local function get_contrast_color(color)
        if has_helpers then
          return helpers.contrast_color(color)
        else
          return "#FFFFFF" -- 回退到白色
        end
      end

      -- 如果没有找到 incline.helpers 和 nvim-web-devicons 模块，提前返回避免错误
      if not has_helpers or not has_devicons then
        vim.notify("Required plugin modules not found: incline.helpers or nvim-web-devicons", vim.log.levels.WARN)
        return
      end

      require("incline").setup({
        window = {
          padding = 0,
          margin = { horizontal = 0, vertical = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end

          local ft_icon, ft_color = devicons.get_icon_color(filename)
          local modified = vim.bo[props.buf].modified

          local res = {
            ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = get_contrast_color(ft_color) } or "",
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            guibg = "#44406e",
          }

          if props.focused and has_navic then
            local navic_data = navic.get_data(props.buf)
            for _, item in ipairs(navic_data or {}) do
              table.insert(res, {
                { " > ", group = "NavicSeparator" },
                { item.icon, group = "NavicIcons" .. item.type },
                { item.name, group = "NavicText" },
              })
            end
          end

          table.insert(res, " ")
          return res
        end,
      })
    end,
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
