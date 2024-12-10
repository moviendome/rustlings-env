return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      -- suggestion = { enabled = true, auto_trigger = true },
      -- panel = { enabled = true, auto_refresh = true },
      filetypes = {
        markdown = true,
        help = true,
      },
      -- keymap = {
      --   jump_prev = "[[",
      --   jump_next = "]]",
      --   accept = "<CR>",
      --   refresh = "gr",
      --   open = "<M-CR>",
      -- },
    },
  },
}
