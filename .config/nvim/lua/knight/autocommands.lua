--vim.api.nvim_command([[
--  augroup highlight_yank
--    autocmd!
--    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
--  augroup END
--]])

vim.api.nvim_command([[
autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=500}
]])
