-- 映射 gn 按键为切换到下一个缓冲区
vim.keymap.set('n', 'gn', ':bnext<CR>', { noremap = true, silent = true })

-- 映射 gp 按键为切换到上一个缓冲区
vim.keymap.set('n', 'gp', ':bprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-d>', ':bd<CR>', { noremap = true, silent = true })

local function get_current_file_path()
    local file_path = vim.fn.expand('%:p')
    local modified_path = file_path:gsub('/data/mm64/zhihaopan/', ''):gsub('QQMail/', '')
    vim.fn.setreg('+', modified_path)
    vim.fn.setreg('*', modified_path)
    return modified_path
end

-- 将函数映射到 <leader>cf
vim.keymap.set('n', '<leader>cf', get_current_file_path, { noremap = true, silent = true })

-- F2 A
vim.keymap.set('n', '<F2>', ':Format<CR>', { noremap = true, silent = true })
