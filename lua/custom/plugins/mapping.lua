-- custom keymap
-- learn more about buffers (:help buffer, help nvim_buf_*, help local-buffer)
-- learn more about window management (:help window, :help window-moving)
-- configure the terminal to your liking and add all the keymaps (help terminal, help map-commands)

return {
  vim.keymap.set('n', '<leader>th', '<cmd>Telescope colorscheme<CR>'),
  vim.keymap.set('n', '<leader>ww', '<cmd>w<CR>'), -- save file

  -- buffer and window management
  vim.keymap.set('n', '<leader>tt', '<cmd>terminal<CR>'), -- open terminal
  vim.keymap.set('n', '<leader>tb', '<cmd>new<CR>'), -- new buffer
  vim.keymap.set('n', '<leader>td', '<cmd>bd!<CR>'), -- close buffer (force)
  vim.keymap.set('n', '<leader>ts', '<cmd>split<CR>'), -- splits the window horiz
  vim.keymap.set('n', '<leader>tv', '<cmd>vsplit<CR>'), -- splits the window vert
  vim.keymap.set('n', '<leader>tq', '<cmd>q<CR>'), -- closes the current window
  vim.keymap.set('n', '<leader>tz', '<cmd>new | terminal<CR>'), -- create new buffer and open terminal
}
