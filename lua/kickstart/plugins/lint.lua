return {
  {
    -- Linting
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      -- Configure linters for specific filetypes
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        javascript = { 'eslint' }, -- Use eslint_d for JavaScript
        typescript = { 'eslint' }, -- Use eslint_d for TypeScript
        javascriptreact = { 'eslint' }, -- Use eslint_d for JSX
        typescriptreact = { 'eslint' }, -- Use eslint_d for TSX
      }

      -- Create autocommand to run linting on specific events
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
