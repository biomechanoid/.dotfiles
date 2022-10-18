--Autocommand reloads neovim whenever you save plugins.lua file
vim.cmd [[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost init.lua source <afile> | PackerSync
   augroup end
]]

--Use protected call so we don't error out when starting
local ok, packer = pcall(require, "packer")
if not ok then
  vim.nofify("Packer has issues to run", "error")
  return
end

--Packer use popup window
packer.init {
  packer.init{
    display = {
        open_fn = function()
           return require("packer.util").float {border=rounded}
        end
    }
  }
}

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
    -- Nightfox color scheme
  use 'EdenEast/nightfox.nvim' 
  -- devicons
  use 'kyazdani42/nvim-web-devicons'
  -- File explorer https://github.com/kyazdani42/nvim-tree.lua 
  use 'kyazdani42/nvim-tree.lua'
  -- A fancy, configurable, notification manager for NeoVim
  use 'rcarriga/nvim-notify'
  -- Collection of configurations for the built-in LSP client
  use 'neovim/nvim-lspconfig'
  -- Statusline written in Lua.
  use 'nvim-lualine/lualine.nvim'
  -- tabline plugin
  use 'romgrk/barbar.nvim'
  -- TreeSitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  --nvim-treesitter-refactor
  use {'nvim-treesitter/nvim-treesitter-refactor'}
  --coc Conquer of Completion
  --use {'neoclide/coc.nvim', branch = 'release'}
  -- Telescope finder
  use {'sharkdp/fd'}
  use { "nvim-telescope/telescope-file-browser.nvim" }
  --use 'fannheyward/telescope-coc.nvim'
  use { 'nvim-telescope/telescope.nvim',
         requires = { {'nvim-lua/plenary.nvim'} }
      }

  --Autocompleton https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind.nvim' -- pictograms to neovim built-in lsp

  use 'tpope/vim-surround'
  -- WhichKey
use {"folke/which-key.nvim",
   config = function()
     require("which-key").setup{
        window = {
          border = "single"
        }
     }
   end,
}
end)
