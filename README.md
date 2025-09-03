# 🚀 Modern Neovim Configuration

A feature-rich, modern Neovim configuration built with Lua, designed for productivity and development across multiple programming languages.

## ✨ Features

### 🎨 Themes & UI
- **Dynamic Theme Switching**: Switch between Nord and OneDark themes via environment variable
- **Beautiful Status Line**: Customized Lualine with theme integration
- **Modern Buffer Line**: Enhanced buffer management with visual indicators
- **Startup Screen**: Custom Alpha dashboard with ASCII art
- **File Explorer**: Neo-tree with Git integration and modern icons
- **Transparent Background**: Toggle background transparency with `<leader>bg`

### 🔧 Core Functionality
- **LSP Integration**: Full Language Server Protocol support with Mason auto-installer
- **Smart Autocompletion**: nvim-cmp with multiple sources (LSP, snippets, buffer, path)
- **Syntax Highlighting**: Tree-sitter with support for 30+ languages
- **Fuzzy Finding**: Telescope for files, buffers, Git, and more
- **Git Integration**: GitSigns, LazyGit, and Fugitive for comprehensive Git workflow
- **Session Management**: Automatic session save/restore functionality

### 🛠️ Development Tools
- **Debugging**: DAP integration with UI for Python and other languages
- **Database**: DadBod integration for database management
- **Formatting**: Automatic formatting on save with none-ls
- **Linting**: Real-time linting and diagnostics
- **Code Navigation**: Aerial for symbol outline and navigation
- **Terminal Integration**: Tmux navigator for seamless pane switching

### 📝 Language Support
- **Python**: Ruff, pylsp, debugpy
- **Lua**: lua_ls with Neovim-specific configuration
- **JavaScript/TypeScript**: Full support with formatting and linting
- **Web Development**: HTML, CSS, JSON, YAML
- **DevOps**: Terraform, Docker, Bash scripting
- **Databases**: SQL support with dadbod
- **And many more**: Go, Java, Groovy, Markdown, etc.

## 📋 Requirements

- **Neovim** >= 0.9.0
- **Git** (for plugin management)
- **Node.js** (for some LSP servers)
- **Python 3** (for Python development)
- **Nerd Font** (recommended for icons)
- **ripgrep** (for telescope live grep)
- **fd** (optional, for faster file finding)

### Optional Dependencies
- **LazyGit** (for Git UI)
- **Make** (for telescope-fzf-native)
- **Kitty Terminal** (for padding adjustments)

## 🚀 Installation

### Quick Install
```bash
# Clone the repository
git clone https://github.com/markheramis/nvim-config.git ~/.config/nvim

# Or use the provided install script
cd /path/to/this/repo
chmod +x install.sh
./install.sh
```

### Manual Installation
```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.bak

# Create config directory
mkdir -p ~/.config/nvim

# Create symbolic links
ln -s /path/to/this/repo/init.lua ~/.config/nvim/init.lua
ln -s /path/to/this/repo/lua ~/.config/nvim/lua
```

## ⚙️ Configuration

### Theme Selection
Set the `NVIM_THEME` environment variable to choose your theme:
```bash
# In your shell profile (.bashrc, .zshrc, etc.)
export NVIM_THEME="nord"     # Default
export NVIM_THEME="onedark"  # Alternative
```

### First Launch
1. Start Neovim: `nvim`
2. Lazy.nvim will automatically install all plugins
3. LSP servers and tools will be installed via Mason
4. Restart Neovim after initial setup

## 🎯 Key Bindings

### Leader Key
- **Leader**: `<Space>` (Spacebar)

### Essential Keymaps
| Key | Mode | Action |
|-----|------|--------|
| `<leader>e` | Normal | Toggle file explorer (left) |
| `<leader>w` | Normal | Toggle file explorer (float) |
| `<leader>sf` | Normal | Find files |
| `<leader>sg` | Normal | Live grep |
| `<leader>sb` | Normal | Search buffers |
| `<leader>lg` | Normal | LazyGit |
| `<leader>o` | Normal | Toggle symbol outline |
| `<leader>bg` | Normal | Toggle background transparency |

### Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Navigate to left split/tmux pane |
| `<C-j>` | Normal | Navigate to below split/tmux pane |
| `<C-k>` | Normal | Navigate to above split/tmux pane |
| `<C-l>` | Normal | Navigate to right split/tmux pane |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>x` | Normal | Close buffer |
| `<C-d/u>` | Normal | Scroll half page (centered) |

### LSP & Code
| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | Go to references |
| `K` | Normal | Hover documentation |
| `<leader>ca` | Normal | Code actions |
| `<leader>rn` | Normal | Rename symbol |
| `[d` / `]d` | Normal | Previous/next diagnostic |

### Git
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gs` | Normal | Git status |
| `<leader>gc` | Normal | Git commits |
| `<leader>gb` | Normal | Git branches |
| `<leader>ngs` | Normal | Neo-tree Git status |

### Sessions
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ss` | Normal | Save session |
| `<leader>sl` | Normal | Load session |

### Quick Actions
| Key | Mode | Action |
|-----|------|--------|
| `<C-s>` | Normal | Save file |
| `<C-q>` | Normal | Quit |
| `<Esc>` | Normal | Clear search highlights |
| `jk` / `kj` | Insert | Exit insert mode |
| `<C-c>` | Normal/Visual | Toggle comment |

## 📁 Project Structure

```
├── init.lua                 # Main configuration entry point
├── install.sh              # Installation script
├── lua/
│   ├── core/
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── options.lua     # Vim options
│   │   └── snippets.lua    # Custom snippets and autocommands
│   └── plugins/
│       ├── themes/
│       │   ├── nord.lua    # Nord theme configuration
│       │   └── onedark.lua # OneDark theme configuration
│       ├── lsp.lua         # LSP configuration
│       ├── telescope.lua   # Fuzzy finder
│       ├── treesitter.lua  # Syntax highlighting
│       ├── autocompletion.lua # Completion engine
│       ├── none-ls.lua     # Formatting and linting
│       ├── neo-tree.lua    # File explorer
│       ├── lualine.lua     # Status line
│       ├── bufferline.lua  # Buffer line
│       ├── lazygit.lua     # Git integration
│       ├── debug.lua       # Debugging support
│       ├── database.lua    # Database tools
│       ├── harpoon.lua     # File navigation
│       ├── aerial.lua      # Symbol outline
│       └── misc.lua        # Miscellaneous plugins
└── README.md               # This file
```

## 🔌 Plugin List

### Core Plugins
- **lazy.nvim** - Plugin manager
- **nvim-lspconfig** - LSP configuration
- **mason.nvim** - LSP/tool installer
- **nvim-cmp** - Autocompletion
- **nvim-treesitter** - Syntax highlighting
- **telescope.nvim** - Fuzzy finder

### UI Plugins
- **nord.nvim** / **onedark.nvim** - Color schemes
- **lualine.nvim** - Status line
- **bufferline.nvim** - Buffer line
- **neo-tree.nvim** - File explorer
- **alpha-nvim** - Start screen
- **indent-blankline.nvim** - Indent guides

### Git Plugins
- **gitsigns.nvim** - Git signs in gutter
- **lazygit.nvim** - LazyGit integration
- **vim-fugitive** - Git commands
- **vim-rhubarb** - GitHub integration

### Development Plugins
- **none-ls.nvim** - Formatting and linting
- **nvim-dap** - Debugging
- **vim-dadbod** - Database interface
- **Comment.nvim** - Smart commenting
- **nvim-autopairs** - Auto-close brackets
- **which-key.nvim** - Keybinding hints

### Navigation Plugins
- **harpoon** - Quick file navigation
- **aerial.nvim** - Symbol outline
- **vim-tmux-navigator** - Tmux integration
- **telescope-fzf-native.nvim** - Faster fuzzy finding

## 🎨 Customization

### Adding New Plugins
1. Create a new file in `lua/plugins/` or add to existing files
2. Follow the lazy.nvim plugin specification
3. Add the plugin to the main setup in `init.lua` if needed

### Modifying Keymaps
Edit `lua/core/keymaps.lua` to add or modify key bindings.

### Changing Options
Modify `lua/core/options.lua` to adjust Vim settings.

### Theme Customization
Edit theme files in `lua/plugins/themes/` to customize colors and appearance.

## 🐛 Troubleshooting

### Common Issues
1. **LSP not working**: Run `:Mason` to check installed servers
2. **Icons not showing**: Install a Nerd Font and set it in your terminal
3. **Telescope errors**: Install `ripgrep` and `fd`
4. **Git integration issues**: Ensure `git` is in your PATH

### Health Check
Run `:checkhealth` in Neovim to diagnose issues.

### Plugin Management
- `:Lazy` - Open plugin manager
- `:Lazy sync` - Update all plugins
- `:Lazy clean` - Remove unused plugins

## 📄 License

This configuration is open source and available under the MIT License.

## 🤝 Contributing

Feel free to submit issues, feature requests, or pull requests to improve this configuration.

## 📚 Resources

### Core Documentation
- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide for Neovim](https://neovim.io/doc/user/lua-guide.html)

### Plugin Manager & Core Plugins
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [LSP Configuration](https://github.com/neovim/nvim-lspconfig) - LSP setup
- [Mason.nvim](https://github.com/williamboman/mason.nvim) - LSP/tool installer
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder

### UI & Themes
- [Nord.nvim](https://github.com/shaunsingh/nord.nvim) - Nord theme
- [OneDark.nvim](https://github.com/navarasu/onedark.nvim) - OneDark theme
- [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line
- [Bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer line
- [Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [Alpha-nvim](https://github.com/goolord/alpha-nvim) - Start screen

### Development Tools
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim) - Formatting & linting
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debug Adapter Protocol
- [vim-dadbod](https://github.com/tpope/vim-dadbod) - Database interface
- [Aerial.nvim](https://github.com/stevearc/aerial.nvim) - Symbol outline
- [Harpoon](https://github.com/ThePrimeagen/harpoon) - File navigation

### Git Integration
- [Gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git signs
- [LazyGit.nvim](https://github.com/kdheepak/lazygit.nvim) - LazyGit integration
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands
- [vim-rhubarb](https://github.com/tpope/vim-rhubarb) - GitHub integration

### Utility Plugins
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Smart commenting
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Auto-close brackets
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding hints
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Tmux integration

---

**Happy coding with Neovim! 🎉**
