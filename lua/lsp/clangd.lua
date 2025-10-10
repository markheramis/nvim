vim.lsp.config['clangd'] = {
	cmd = {
		"clangd",
		"--fallback-style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}",
	},
    url = 'https://clangd.llvm.org/installation',
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	root_markers = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac",
		"main.cpp",
	},
}