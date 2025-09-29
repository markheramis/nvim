-- Lua LSP Configuration
-- Language Server: lua_ls
-- Provides Lua language support for Neovim configuration and Lua files

return {
  lua_ls = {
    -- cmd = {...},
    -- filetypes { ...},
    -- capabilities = {},
    settings = {
      Lua = {
        runtime = { version = 'LuaJIT' },
        workspace = {
          checkThirdParty = false,
          -- Tells lua_ls where to find all the Lua files that you have loaded
          -- for your neovim configuration.
          library = {
            '${3rd}/luv/library',
            unpack(vim.api.nvim_get_runtime_file('', true)),
          },
          -- If lua_ls is really slow on your computer, you can try this instead:
          -- library = { vim.env.VIMRUNTIME },
        },
        completion = {
          callSnippet = 'Replace',
        },
        telemetry = { enable = false },
        diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}
