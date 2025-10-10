vim.lsp.config['zls'] = {
    cmd = { 'zls' },
    url = 'https://github.com/zigtools/zls',
    filetypes = { 'zig', 'zir' },
    root_markers = { 'zls.json', 'build.zig', '.git' },
    workspace_required = false,
  }