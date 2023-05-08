vim.opt.encoding = 'UTF-8'
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.smartindent = true
vim.opt.autowrite = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.fileencodings = 'utf8,gbk'
vim.opt.backspace = 'indent,eol,start'
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.wildchar = ('\t'):byte()
vim.opt.wildcharm = ('\t'):byte()

vim.opt.clipboard:append('unnamed')
vim.opt.clipboard:append('unnamedplus')

vim.keymap.set('n', '<leader>cf', [[:let @*=expand('%:p')<CR>]], { noremap = true, silent = true })
