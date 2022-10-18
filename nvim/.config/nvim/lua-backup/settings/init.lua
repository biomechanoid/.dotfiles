local set = vim.opt

set.number = true
set.expandtab = true
set.smarttab = true
set.tabstop = 4

set.hlsearch = true
set.smartcase = true

set.wrap = false
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.fileencoding = 'utf-8'

set.relativenumber = true
set.cursorline = true

set.hidden = true
set.termguicolors = true 
set.modifiable = true
set.buftype = ""
set.timeoutlen = 300

vim.notify = require("notify")
vim.notify.setup({
  background_colour = "#000000",
  stages = "fade_in_slide_out",
  timeout = 5000,
})


