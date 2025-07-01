local M = {}
function M.config()
  vim.g.copilot_no_tab_map = true -- 禁用 Tab 自动接受建议
  -- vim.g.copilot_enabled = false -- 禁用 Copilot 自动补全

  -- 绑定其他按键接受建议（可选）
  vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { expr = true, silent = true, script = true })
  vim.api.nvim_set_keymap("i", "<C-l>", 'coc#refresh()', { expr = true, silent = true, script = true })
end

return M
