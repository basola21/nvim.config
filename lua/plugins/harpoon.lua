return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>hm", function() require("harpoon.mark").add_file() end,        desc = "Harpoon: Mark File" },
    { "<leader>hn", function() require("harpoon.ui").nav_next() end,          desc = "Harpoon: Next Mark" },
    { "<leader>hp", function() require("harpoon.ui").nav_prev() end,          desc = "Harpoon: Previous Mark" },
    { "<leader>ha", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon: Toggle Quick Menu" },
  },
  config = function()
    require("harpoon").setup()
  end,
}
