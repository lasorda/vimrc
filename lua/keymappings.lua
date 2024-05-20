-- 映射 gn 按键为切换到下一个缓冲区
vim.keymap.set('n', 'gn', ':bnext<CR>', { noremap = true, silent = true })

-- 映射 gp 按键为切换到上一个缓冲区
vim.keymap.set('n', 'gp', ':bprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-d>', ':bd<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>cf', [[:let @*=expand('%:p')<CR>]], { noremap = true, silent = true })

-- F2 A
vim.keymap.set('n', '<F2>', ':Format<CR>', { noremap = true, silent = true })
