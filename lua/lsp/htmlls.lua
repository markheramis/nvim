vim.lsp.config['htmlls'] = {
	cmd = { "vscode-html-language-server", "--stdio" },
	url = 'https://github.com/hrsh7th/vscode-langservers-extracted',
	filetypes = { "html" },
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = {
			css = true,
			javascript = true
		}
	},
	root_dir = function(fname)
		return root_pattern(fname) or vim.loop.os_homedir()
		end,
	settings = {}
}