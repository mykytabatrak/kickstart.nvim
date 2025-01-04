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
    { '\\', ':Neotree source=last reveal=true<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    close_if_last_window = false,
    open_files_do_not_replace_types = { 'trouble', 'qf' },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    buffers = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    git_status = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
