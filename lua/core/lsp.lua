-- Autoload all LSP configuration modules from lua/lsp directory.
-- Each module is expected to add its config to vim.lsp.config.
function autoload_lsp()
  local lsp_dir = vim.fn.stdpath("config") .. "/lua/lsp"
  local lsp_files = vim.fn.globpath(lsp_dir, "*.lua", false, true)
  for _, file in ipairs(lsp_files) do
    local module = file:match("lua/lsp/(.+)%.lua$")
    if module then
      require("lsp." .. module)
    end
  end
end

-- Check if the LSP server's command is available and enable the LSP if so.
-- If not, notify the user with a warning.
-- Handles missing or malformed config gracefully.
-- @param config table: LSP configuration table, expected to have 'cmd', 'url', and 'name' fields.
function enable_lsp(config)
  local cmd = config.cmd
  local url = config.url or "No URL provided"
  if vim.fn.executable(cmd[1]) == 1 then
    vim.lsp.enable(config.name)
  else
    vim.notify(
      "[LSP] '" .. cmd[1] .. "' is not installed or not found in PATH. Please install it to enable " .. config.name .. " LSP support.\nUrl: " .. url,
      vim.log.levels.WARN
    )
  end
end

autoload_lsp()

-- enable_lsp(vim.lsp.config['marksman'])
enable_lsp(vim.lsp.config['bashls'])
enable_lsp(vim.lsp.config['luals'])

enable_lsp(vim.lsp.config['clangd'])

-- todo: markdown via vscode-langservers-extracted
enable_lsp(vim.lsp.config['htmlls'])
enable_lsp(vim.lsp.config['jsonls'])
-- todo: css via vscode-langservers-extracted

enable_lsp(vim.lsp.config['phpactor'])
enable_lsp(vim.lsp.config['pyls'])
enable_lsp(vim.lsp.config['tsls'])

enable_lsp(vim.lsp.config['zls'])
enable_lsp(vim.lsp.config['rustanalyzer'])
