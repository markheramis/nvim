vim.lsp.config['marksman'] = {
    cmd = { "marksman", "server" },
    url = 'https://github.com/artempyanykh/marksman',
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml", ".git" },
}