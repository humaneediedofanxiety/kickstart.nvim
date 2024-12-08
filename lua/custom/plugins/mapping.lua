-- custom keymap
-- learn more about buffers (:help buffer, help nvim_buf_*, help local-buffer)
-- learn more about window management (:help window, :help window-moving)
-- configure the terminal to your liking and add all the keymaps (help terminal, help map-commands)

return {
  vim.keymap.set('n', '<leader>th', '<cmd>Telescope colorscheme<CR>'),
}
