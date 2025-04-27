local ftMap = { vim = 'indent', python = { 'treesitter', 'indent' }, go = 'treesitter', json = 'indent' }
return {
  "kevinhwang91/nvim-ufo",
  config = function()
    require('ufo').setup {
      provider_selector = function(bufnr, filetype)
        return ftMap[filetype] or { 'lsp', 'indent' }
      end,
      close_fold_kinds_for_ft = {
        default = { 'comment', 'imports' },
        json    = { 'array' },
      },
      preview = {
        win_config = { border = 'rounded', winblend = 12 },
        mappings   = { scrollU = '<C-u>', scrollD = '<C-d>' },
      },
    }
  end,

  dependencies = { "kevinhwang91/promise-async", }
}
