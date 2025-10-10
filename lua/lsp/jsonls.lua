vim.lsp.config['jsonls'] ={
    -- Command and arguments to start the server.
    cmd = { "vscode-json-language-server", "--stdio" },
    -- URL to the LSP server
    url = 'https://github.com/Microsoft/vscode-json-languageservice',
    -- Filetypes to automatically attach to.
    filetypes = { "json", "jsonc" },
    -- Initialization options for the server.
    root_markers = { ".git" },
    -- Initialization options for the server.
    init_options = {
      provideFormatter = false,
    }
}