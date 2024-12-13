local M = {}

function M.config()
    vim.g.rainbow_active = 1
    vim.g.rainbow_conf = {
        ctermfgs = {'DarkBlue', 'White', 'DarkCyan', 'DarkGray', 'DarkMagenta', 'DarkYellow', 'DarkGreen', 'DarkRed'},
        operators = '_,|+|-|*|/|===|!==_',
        parentheses = {
            'start=/(/ end=/)/ fold',
            'start=/\\[/ end=/\\]/ fold',
            'start=/{/ end=/}/ fold',
            'start=/<\\ze\\S/ end=/>/ fold'
        }
    }
end

return M
