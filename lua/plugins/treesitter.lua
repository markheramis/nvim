return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = 'VeryLazy',
  config = function()
    require('nvim-treesitter.configs').setup({
      -- Auto-install parsers on startup
      ensure_installed = {
        -- Documentation files
        'markdown',  -- For Markdown files

        -- Configuration files
        'json',      -- For JSON files
        'yaml',      -- For YAML files
        'toml',      -- For TOML files

        -- Scripting languages
        'bash',      -- For shell scripts

        -- Web development languages
        'html',      -- For HTML files
        'css',       -- For CSS files
        'javascript', -- For JavaScript files
        'typescript', -- For TypeScript files

        -- Programming languages
        'lua',       -- For Lua files
        'php',       -- For PHP files
        'python',    -- For Python files
        'go',        -- For Go files
        'java',      -- For Java files
        
        -- Systems programming languages
        'c',         -- For C files
        'cpp',       -- For C++ files
        'rust',      -- For Rust files
        'zig',       -- For Zig files
        
        -- Query languages
        'sql',       -- For SQL files

        -- Infrastructure as Code languages
        'terraform', -- For Terraform files
      },
      -- Enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- Enable indentation
      indent = {
        enable = true,
      },
      -- Enable incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-space>',
          node_incremental = '<c-space>',
          scope_incremental = '<c-s>',
          node_decremental = '<M-space>',
        },
      },
    })
  end,
}
