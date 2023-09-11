local function Config(config_module)
    local function is_directory_empty(path)
        local cmd = 'ls -A "' .. path .. '" |grep -v packer'
        local handle = io.popen(cmd)
        local result = ''
        if handle ~= nil then
            result = handle:read('*a')
            handle:close()
        end
        return result == ''
    end

    if is_directory_empty('$HOME/.local/share/nvim/site/pack/packer/start/') then
        return
    end
    require(config_module).config()
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'tomasiser/vim-code-dark',
        config = Config('plugins.vim-code-dark')
    }
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        config = Config('plugins.coc')
    }
    use {
        'vim-airline/vim-airline',
        requires = { 'vim-airline/vim-airline-themes' },
        config = require("plugins.airline_theme").config()
    }

    use {
        'scrooloose/nerdcommenter',
        config = Config('plugins.nerdcommenter')
    }
    use 'honza/vim-snippets'
    use {
        'antoinemadec/coc-fzf',
        branch = 'release',
        requires = {
            {
                'junegunn/fzf.vim',
                config = Config('plugins.fzf')
            },
            {
                'junegunn/fzf',
                run = 'cd ~/.fzf && ./install --all && go build . && mv fzf bin',
            }
        },
        config = Config('plugins.cocfzf')
    }
    use {
        'fatih/vim-go',
        ft = { 'go' }
    }
    use {
        'ntpeters/vim-better-whitespace',
        config = Config('plugins.vim-better-whitespace')
    }
    use {
        'skywind3000/asynctasks.vim',
        requires = {
            'skywind3000/asyncrun.vim',
        },
        config = Config('plugins.asynctasks')
    }
    use {
        'voldikss/vim-floaterm',
        config = Config('plugins.floaterm')
    }
    use {
        'bfrg/vim-cpp-modern',
        ft = { 'c', 'cpp' },
        config = Config('plugins.vim-cpp-modern')
    }
    use {
        'junegunn/rainbow_parentheses.vim',
        config = Config('plugins.rainbow_parentheses')
    }
    use {
        'vim-scripts/DoxygenToolkit.vim',
        config = Config('plugins.DoxygenToolkit')
    }
    use {
        'madox2/vim-ai',
        config = Config('plugins.vim-ai')
    }
    use {
        'Civitasv/cmake-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-lualine/lualine.nvim',
                requires = { 'nvim-tree/nvim-web-devicons' },
            }
        },
        config = Config('plugins.cmake-tools')
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        requires = {
            { 'nvim-lua/plenary.nvim' },
        },
        config = Config('plugins.telescope')
    }
end)
