local M = {}

function M.config()
    vim.g.rainbow_active = 1
    vim.g.rainbow_conf = {
        guifgs = { 'White', 'LightBlue', 'DarkCyan', 'DarkYellow', 'DarkGreen', 'DarkRed', 'DarkGray' },
        ctermfgs = { 'White', 'DarkBlue', 'DarkCyan', 'DarkYellow', 'DarkGreen', 'DarkRed', 'DarkGray' },
        operators = '_,|+|-|*|/|===|!==_',
        parentheses = {
            'start=/(/ end=/)/ fold',
            'start=/\\[/ end=/\\]/ fold',
            'start=/{/ end=/}/ fold',
            'start=/<\\ze\\w/ end=/>/ fold',
        }
    }
end

return M
