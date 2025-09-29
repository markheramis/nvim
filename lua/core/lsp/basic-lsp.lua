-- Basic LSP Configuration
-- Language servers that don't require special configuration
-- These are simple servers that work well with default settings

return {
  -- Web Development
  jsonls = {},
  yamlls = {},
  
  -- Infrastructure & DevOps
  terraformls = {},
  dockerls = {},
  docker_compose_language_service = {},
  bashls = {},
  
  -- Database
  sqlls = {}, -- SQL language server (supports MySQL, PostgreSQL, etc.)
  
  -- Web Development
  phpactor = {}, -- PHP language server
  
  -- Uncomment as needed:
  -- html = { filetypes = { 'html', 'twig', 'hbs' } },
  -- cssls = {},
  -- tailwindcss = {},
  -- graphql = {},
  -- ltex = {},
  -- texlab = {},
}
