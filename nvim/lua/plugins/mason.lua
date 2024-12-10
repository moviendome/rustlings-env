return {
  {
    "williamboman/mason.nvim",
    -- event = "VeryLazy",
    config = function()
      require("mason").setup({
        PATH = "append",
        ui = {
          check_outdated_packages_on_open = false,
        },
      })
    end,
  },
}
