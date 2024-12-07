return {
  'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup {
      autostart = true,
      cursor = '', -- Use a unique character for the cursor
      fancy = {
        enable = true,
        head = { cursor = '◉', texthl = 'SmoothCursorHead' },
        body = {
          { cursor = '◍' },
          { cursor = '◌' },
          { cursor = '.' },
        },
        tail = { cursor = nil },
      },
      speed = 50,
      intervals = 35,
      threshold = 3,
    }
    vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#FFD700' }) -- Gold color
    vim.api.nvim_set_hl(0, 'SmoothCursorHead', { fg = '#FF4500' }) -- OrangeRed
  end,
}
