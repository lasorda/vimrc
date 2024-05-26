local M = {}
function M.config()
    vim.keymap.set('n', '<space><space>', ':<C-u>CocFzfList<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>c', ':<C-u>CocFzfList commands<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>l', ':<C-u>CocFzfList location<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>o', ':<C-u>CocFzfList outline<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>s', ':<C-u>CocCommand clangd.switchSourceHeader<CR>',
        { silent = true, nowait = true })
    vim.keymap.set('n', '<space>j', ':<C-u>CocNext<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>k', ':<C-u>CocPrev<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>p', ':<C-u>CocFzfListResume<CR>', { silent = true, nowait = true })
    vim.keymap.set('n', '<space>d', ':<C-u>CocFzfList diagnostics<CR>', { silent = true, nowait = true })
end

return M
