-- --- Send reminder to quickfix list for manual steps
-- ---@param line string
-- local function send_to_quickfix(line)
--   vim.fn.setqflist({ { filename = "CopilotChat.nvim", lnum = 0, text = line } }, "a")
-- end
--
-- return {
--   -- Import the copilot plugin
--   { import = "lazyvim.plugins.extras.coding.copilot" },
--   {
--     "gptlang/CopilotChat.nvim",
--     build = function()
--       local copilot_chat_dir = vim.fn.stdpath("data") .. "/lazy/CopilotChat.nvim"
--       -- Copy remote plugin to config folder
--       vim.fn.system({ "cp", "-r", copilot_chat_dir .. "/rplugin", vim.fn.stdpath("config") })
--
--       -- Notify the user about manual steps
--       send_to_quickfix("Please run 'pip install -r " .. copilot_chat_dir .. "/requirements.txt'.")
--       send_to_quickfix("Afterwards, open Neovim and run ':UpdateRemotePlugins', then restart Neovim.")
--
--       -- NOTE: add below to plugin.py if you want to change wrap and filetype
--       -- self.nvim.command("setlocal filetype=markdown")
--       -- self.nvim.command("setlocal wrap")
--     end,
--   },
-- }

-- return {
--   -- Import the copilot plugin
--   { import = "lazyvim.plugins.extras.coding.copilot" },
--   {
--     "CopilotC-Nvim/CopilotChat.nvim",
--     opts = {
--       show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
--       debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
--       disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
--       -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
--     },
--     build = function()
--       vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
--     end,
--     event = "VeryLazy",
--     keys = {
--       { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
--       { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
--       {
--         "<leader>ccv",
--         ":CopilotChatVisual",
--         mode = "x",
--         desc = "CopilotChat - Open in vertical split",
--       },
--       {
--         "<leader>ccx",
--         ":CopilotChatInPlace<cr>",
--         mode = "x",
--         desc = "CopilotChat - Run in-place code",
--       },
--     },
--   },
-- }

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    debug = true,
    show_help = "yes",
    prompts = {
      Explain = "Explain how it works.",
      Review = "Review the following code and provide concise suggestions.",
      Tests = "Briefly explain how the selected code works, then generate unit tests.",
      Refactor = "Refactor the code to improve clarity and readability.",
    },
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  event = "VeryLazy",
  keys = {
    { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
    { "<leader>ccR", "<cmd>CopilotChatRefactor<cr>", desc = "CopilotChat - Refactor code" },
  },
}
