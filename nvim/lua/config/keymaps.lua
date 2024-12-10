-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Back to previous buffer
vim.keymap.set("n", "<Space><Space>", "<c-^>,cr>", { silent = true })

-- Splits
vim.keymap.set("s", "<Nop>", "Nop", { silent = true })
vim.keymap.set("n", "ss", ":<C-u>sp<cr>", { silent = true })
vim.keymap.set("n", "sv", ":<C-u>vsp<cr>", { silent = true })
vim.keymap.set("n", "sq", ":<C-u>q<cr>", { silent = true })

-- Move between splits
vim.keymap.set("n", "sh", "<C-w>h", { silent = true })
vim.keymap.set("n", "sj", "<C-w>j", { silent = true })
vim.keymap.set("n", "sk", "<C-w>k", { silent = true })
vim.keymap.set("n", "sl", "<C-w>l", { silent = true })

-- Tabs
-- vim.keymap.set("n", "<leader><tab>", "<cmd>tabnew<cr>", { silent = true })
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { silent = true })
vim.keymap.set("n", "<s-tab>", "<cmd>tabprev<cr>", { silent = true })
vim.keymap.set("n", "<tab>q", "<cmd>tabclose<cr>", { silent = true })

-- No double esc to back to normal mode
vim.keymap.set("i", "<esc>", "<c-\\><c-n>", { silent = true })
