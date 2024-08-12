local font = 'FiraCode Nerd Font'
local fontsize = 10

vim.o.guifont = font .. ':h' .. fontsize

if vim.g.fvim_loaded == 1 then
  vim.o.guifont = font .. ':h' .. (fontsize + 2)
  -- Ctrl-ScrollWheel for zooming in/out
  vim.keymap.set('n', '<C-ScrollWheelUp>', '<Cmd>set guifont=+<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<C-ScrollWheelDown>', '<Cmd>set guifont=-<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<A-CR>', '<Cmd>FVimToggleFullScreen<CR>', { noremap = true, silent = true })

  --vim.cmd 'FVimCursorSmoothMove true'
  --vim.cmd 'FVimCursorSmoothBlink true'
end

if vim.g.neovide then
  -- no cursor animation
  vim.g.neovide_cursor_animation_length = 0

  -- change font size with keyboard & mouse wheel
  vim.keymap.set({ 'n', 'v' }, '<C-0>', ':lua vim.g.neovide_scale_factor = 1<CR>')

  vim.keymap.set({ 'n', 'v' }, '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>')
  vim.keymap.set({ 'n', 'v' }, '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>')

  -- mouse remapping (src: https://www.reddit.com/r/neovim/comments/qa4klf/comment/hh7r5pg)
  vim.keymap.set('n', '<C-ScrollWheelUp>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { noremap = true, silent = true })
  vim.keymap.set('n', '<C-ScrollWheelDown>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { noremap = true, silent = true })
end