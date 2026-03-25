vim.opt.encoding = "utf-8"
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.showtabline = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.timeoutlen = 500
vim.opt.wrap = false
vim.opt.sidescroll = 2
vim.opt.sidescrolloff = 15

vim.keymap.set({"i","n"}, "<C-s>", "<Esc>:w<CR>i", { noremap = true, silent = true })

vim.keymap.set({"i","n"}, "<C-z>", "<Esc>u<CR>i", { noremap = true, silent = true })
vim.keymap.set({"i","n"},"<C-y>", "<Esc><C-r>i", { noremap = true, silent = true })

vim.keymap.set({"i","n"},"<C-c>", '<Esc>y', { noremap = true, silent = true })
vim.keymap.set({"i","n"},"<C-x>", '<Esc>d', { noremap = true, silent = true })
vim.keymap.set({"i","n"},"<C-v>", '<Esc>"+p<CR>i', { noremap = true, silent = true })

vim.keymap.set("v","<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("v","<C-x>", '"+d', { noremap = true, silent = true })

vim.keymap.set({"i","n"},"<C-q>", "<Esc>:q<CR>", { noremap = true, silent = true })


vim.keymap.set({"i","n"},"<C-o>", "<Esc>:Neotree toggle<CR>", { noremap = true, silent = true })

