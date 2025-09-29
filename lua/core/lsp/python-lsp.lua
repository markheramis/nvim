-- Python LSP Configuration
-- Language Servers: pylsp, ruff
-- Provides Python language support with linting and formatting

return {
  pylsp = {
    settings = {
      pylsp = {
        plugins = {
          pyflakes = { enabled = false },
          pycodestyle = { enabled = false },
          autopep8 = { enabled = false },
          yapf = { enabled = false },
          mccabe = { enabled = false },
          pylsp_mypy = { enabled = false },
          pylsp_black = { enabled = false },
          pylsp_isort = { enabled = false },
        },
      },
    },
  },
  ruff = {
    -- Notes on code actions: https://github.com/astral-sh/ruff-lsp/issues/119#issuecomment-1595628355
    -- Get isort like behavior: https://github.com/astral-sh/ruff/issues/8926#issuecomment-1834048218
    commands = {
      RuffAutofix = {
        function()
          vim.lsp.buf.execute_command {
            command = 'ruff.applyAutofix',
            arguments = {
              { uri = vim.uri_from_bufnr(0) },
            },
          }
        end,
        description = 'Ruff: Fix all auto-fixable problems',
      },
      RuffOrganizeImports = {
        function()
          vim.lsp.buf.execute_command {
            command = 'ruff.applyOrganizeImports',
            arguments = {
              { uri = vim.uri_from_bufnr(0) },
            },
          }
        end,
        description = 'Ruff: Format imports',
      },
    },
  },
}
