-- LSP Configuration Auto-loader
-- Automatically discovers and loads all language-specific LSP configurations
-- This allows for easy addition of new language servers by simply creating new files

local M = {}

-- Function to get all LSP configurations from language-specific files
function M.get_servers()
  local servers = {}
  
  -- Auto-discover all .lua files in the lsp directory (excluding init.lua)
  local lsp_dir = vim.fn.stdpath('config') .. '/lua/core/lsp'
  local files = vim.fn.globpath(lsp_dir, '*.lua', false, true)
  
  for _, file in ipairs(files) do
    local filename = vim.fn.fnamemodify(file, ':t:r') -- Get filename without extension
    if filename ~= 'init' then -- Skip init.lua itself
      local ok, config = pcall(require, 'core.lsp.' .. filename)
      if ok and config then
        -- Merge the configuration into our servers table
        for server_name, server_config in pairs(config) do
          servers[server_name] = server_config
        end
      else
        -- Silently skip files that don't exist or have errors
        -- This allows for optional language configurations
      end
    end
  end
  
  return servers
end

-- Function to get additional tools that should be installed via Mason
function M.get_additional_tools()
  return {
    'stylua', -- Used to format lua code
  }
end

return M