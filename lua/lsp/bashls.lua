vim.lsp.config['bashls'] = {
    -- Command and arguments to start the server.
    cmd = { "bash-language-server", "start" },
    -- URL to the LSP server
    url = 'https://github.com/bash-lsp/bash-language-server',
    -- Filetypes to automatically attach to.
    filetypes = { "bash", "sh" },
    -- Root markers to detect the root directory.
    root_markers = { ".git" },
    -- Initialization options for the server.
    settings = {
        bashIde = {
            globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
        },
    }
}   