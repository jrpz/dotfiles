-- jj as Escape
vim.keymap.set('i', 'jj', '<Esc>')


vim.keymap.set('n', 'Y', 'Vy<cr>')



-- Faster window movement
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')


-- Telescope
vim.keymap.set('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
vim.keymap.set('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
vim.keymap.set('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
vim.keymap.set('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])

vim.api.nvim_set_keymap(
  'n',
  -- '<space>fb',
  "-",
  ':Telescope file_browser<cr>',
  { noremap = true }
)
