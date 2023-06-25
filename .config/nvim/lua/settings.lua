local options = {
  title = true,
  syntax = "on",
  termguicolors = true,
  cursorline = true,
  cursorcolumn = true,
  showmode = false,
  showcmd = false,
  hlsearch = false,
  
  backup = false,
  swapfile = false,
  
  clipboard = "unnamedplus",
  mouse = "a",

  number = true,
  relativenumber = true,
  
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  smartindent = true,
  shiftround = true,
  scrolloff = 8,
  sidescrolloff = 8,
  
  ignorecase = true,
  smartcase = true,
  
  splitbelow = true,
  splitright = true
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

-- save last position
vim.cmd [[autocmd BufReadPost * if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif]]
