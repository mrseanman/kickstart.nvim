-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<C-b>', '<CMD>Neotree toggle reveal=true position=float<CR>', { desc = 'NeoTree reveal', silent = true } },
    { '<C-g>', '<CMD>Neotree toggle source=git_status reveal=true position=float<CR>', { desc = 'NeoTree reveal', silent = true } },
  },

  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['l'] = 'open',
        },
      },
    },
  },
}
