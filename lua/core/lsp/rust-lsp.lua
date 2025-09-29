-- Rust LSP Configuration
-- Language Server: rust_analyzer
-- Provides Rust language support with advanced features

return {
  rust_analyzer = {
    settings = {
      ['rust-analyzer'] = {
        cargo = {
          loadOutDirsFromCheck = true,
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
        checkOnSave = {
          command = 'clippy',
          extraArgs = { '--', '-W', 'clippy::all' },
        },
        completion = {
          postfix = {
            enable = true,
          },
        },
        hover = {
          actions = {
            enable = true,
            implementations = {
              enable = true,
            },
            references = {
              enable = true,
            },
            run = {
              enable = true,
            },
          },
        },
        lens = {
          enable = true,
          implementations = {
            enable = true,
          },
          references = {
            enable = true,
          },
          run = {
            enable = true,
          },
        },
        inlayHints = {
          enable = true,
          bindingModeHints = {
            enable = true,
          },
          chainingHints = {
            enable = true,
          },
          closingBraceHints = {
            enable = true,
            minLines = 1,
          },
          closureReturnTypeHints = {
            enable = 'never',
          },
          discriminantHints = {
            enable = 'never',
          },
          implicitDrops = {
            enable = true,
          },
          lifetimeElisionHints = {
            enable = 'never',
            useParameterNames = false,
          },
          maxLength = 25,
          parameterHints = {
            enable = true,
          },
          reborrowHints = {
            enable = 'never',
          },
          renderColons = true,
          typeHints = {
            enable = true,
            hideClosureInitialization = false,
            hideNamedConstructor = false,
          },
        },
        diagnostics = {
          enable = true,
          experimental = {
            enable = true,
          },
          disabled = {},
          enableExperimental = true,
        },
        imports = {
          granularity = {
            group = 'module',
          },
          prefix = 'by_crate',
        },
        notifications = {
          cargoTomlNotFound = true,
        },
        rustc = {
          source = 'discover',
        },
        workspace = {
          symbol = {
            search = {
              scope = 'workspace_and_dependencies',
            },
          },
        },
      },
    },
  },
}
