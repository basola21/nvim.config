return { {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,           -- disable inline ghost text
      },
      panel = { enabled = false }, -- disable Copilot panel
    })
  end,
},
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup() -- registers `name = "copilot"` source
    end,
  }, }
