vim.lsp.config['rustanalyzer'] = {
    cmd = { "rust-analyzer" },
    url = 'https://github.com/rust-lang/rust-analyzer',
    filetypes = { "rust" },
    root_dir = function(bufnr)
        local root_markers = { 'Cargo.toml', 'rust-project.json' }
        local project_root = vim.fs.root(bufnr, { root_markers })
        if project_root then
            return project_root
        end
        
        -- Fallback to cargo metadata for workspace detection
        local cmd = 'cargo metadata --no-deps --format-version 1'
        local cargo_metadata = vim.fn.system(cmd)
        if vim.v.shell_error == 0 then
            local cargo_workspace_dir = vim.fn.json_decode(cargo_metadata)['workspace_root']
            if cargo_workspace_dir then
                return cargo_workspace_dir
            end
        end
        
        -- Final fallback to git root
        return vim.fs.root(bufnr, { '.git' })
    end,
    settings = {
        ["rust-analyzer"] = {}
    }
}