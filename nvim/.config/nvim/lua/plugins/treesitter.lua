return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')
      configs.setup {
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "‘", -- set to `false` to disable one of the mappings
            node_incremental = "‘",
            scope_incremental= false,
            node_decremental = '“',
          },
        },
      }
  end
}
