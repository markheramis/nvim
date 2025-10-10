vim.lsp.config['phpactor'] = {
    cmd = { "phpactor", "language-server" },
    url = 'https://github.com/phpactor/phpactor',
    filetypes = { "php" },
    root_dir = function(bufnr)
        local root_markers = { 'composer.json', '.git' }
        local project_root = vim.fs.root(bufnr, { root_markers })
        return project_root
    end,
}