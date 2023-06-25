vim.g.mapleader = " "

function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs)
end

-- center screen after search
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- change active slice
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

-- resize slice
map("n", "<A-S-k>", ":resize +2<CR>")
map("n", "<A-S-j>", ":resize -2<CR>")
map("n", "<A-S-l>", ":vertical resize +2<CR>")
map("n", "<A-S-h>", ":vertical resize -2<CR>")
