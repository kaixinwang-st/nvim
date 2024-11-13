-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

function GetAbsoluteFilePath()
  -- Get absolute path
  local file_path = vim.fn.expand("%")
  -- Paste
  vim.fn.setreg("+", file_path)
  -- Toast message
  print("Copied relative path: " .. file_path)
end

function GetRelativeFilePath()
  -- Get absolute path
  local full_path = vim.fn.expand("%:p")
  -- Get work dir
  local cwd = vim.fn.getcwd()
  -- Calculate relative path
  local relative_path = vim.fn.fnamemodify(full_path, ":.:.")
  -- Toast message
  print(relative_path)
end

-- Save
keymap.set("n", "<Leader>j", ":w<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-w>", ":w<CR>", { noremap = true, silent = true })

-- Save session
keymap.set("n", "<Leader>qj", ":mksession! ~/.config/nvim/sessions/session.vim<CR>", { noremap = true, silent = true })

-- Copy file path
keymap.set("n", "<Leader>ya", ":lua GetAbsoluteFilePath()<CR>", { noremap = true, silent = true })
keymap.set("n", "<Leader>yr", ":lua GetRelativeFilePath()<CR>", { noremap = true, silent = true })

-- Telescope live grep
keymap.set("n", "<Leader>fw", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- Close current buffer
keymap.set("n", "<Leader>c", ":bd<CR>", { noremap = true, silent = true })

-- Avoid Ex mode (重新映射宏录制键)
keymap.set("n", "Q", "q", { noremap = true })

-- % jump
keymap.set("n", "<Leader>z", "%<CR>", { noremap = true, silent = true })

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "df", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Back to Esc
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Esc>", { noremap = true, silent = true })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("kaixin.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
  require("kaixin.lsp").toggleInlayHints()
end)
