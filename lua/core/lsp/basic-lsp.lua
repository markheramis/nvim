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
  sqlls = {},
  
  -- Uncomment as needed:
  -- html = { filetypes = { 'html', 'twig', 'hbs' } },
  -- cssls = {},
  -- tailwindcss = {},
  -- graphql = {},
  -- ltex = {},
  -- texlab = {},
}
