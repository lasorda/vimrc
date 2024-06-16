local M = {}

function M.config()
    vim.g.floaterm_keymap_toggle = '<F6>'
    vim.g.floaterm_keymap_new = '<F7>'
    vim.g.floaterm_keymap_next = '<F8>'
    vim.g.floaterm_opener = 'edit'
    vim.cmd('highlight FloatermBorder guibg=#1E1E1E guifg=#ffffff')
    vim.cmd('autocmd TermOpen * setlocal nonumber norelativenumber')
    vim.g.floaterm_autoclose = 0
end

return M
