vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Theme
  use "rebelot/kanagawa.nvim"

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim'     -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  use 'rcarriga/nvim-notify'

  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
  }

  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = "doom",
        config = {
          header = "hi",
          center = {
            desc = 'description',
            desc_hl = 'group',
            key = 'shortcut key in dashboard buffer not keymap !!',
            key_hl = 'group',
          }
        }
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
  end
}

use {"akinsho/toggleterm.nvim", tag = '*'}

end)
