return {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup {
      easing_function = 'quadratic', -- Smooth easing style
      hide_cursor = false, -- Keep the cursor visible during scrolling
    }
  end,
}
