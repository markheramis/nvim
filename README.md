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

### File & Buffer Management
| Key | Mode | Action |
|-----|------|--------|
| `<leader>b` | Normal | New buffer |
| `<leader>sn` | Normal | Save without auto-formatting |
| `<leader>y` | Normal/Visual | Yank to system clipboard |
| `<leader>Y` | Normal | Yank line to system clipboard |
| `<leader>j` | Normal | Replace word under cursor |
| `\` | Normal | Neo-tree reveal current file |

### Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Navigate to left split/tmux pane |
| `<C-j>` | Normal | Navigate to below split/tmux pane |
| `<C-k>` | Normal | Navigate to above split/tmux pane |
| `<C-l>` | Normal | Navigate to right split/tmux pane |
| `<C-\>` | Normal | Navigate to previous tmux pane |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |
| `<leader>x` | Normal | Close buffer |
| `<C-d/u>` | Normal | Scroll half page (centered) |

### Window & Split Management
| Key | Mode | Action |
|-----|------|--------|
| `<leader>v` | Normal | Split window vertically |
| `<leader>h` | Normal | Split window horizontally |
| `<leader>se` | Normal | Equalize split windows |
| `<leader>xs` | Normal | Close current split |
| `<leader>to` | Normal | Open new tab |
| `<leader>tx` | Normal | Close current tab |
| `<leader>tn` | Normal | Go to next tab |
| `<leader>tp` | Normal | Go to previous tab |
| `<Up/Down/Left/Right>` | Normal | Resize windows |

### Text Editing
| Key | Mode | Action |
|-----|------|--------|
| `<leader>+` | Normal | Increment number |
| `<leader>-` | Normal | Decrement number |
| `<leader>lw` | Normal | Toggle line wrapping |
| `<A-j>` | Visual | Move text down |
| `<A-k>` | Visual | Move text up |
| `jk` / `kj` | Insert | Exit insert mode |

### LSP & Code
| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | Go to references |
| `gI` | Normal | Go to implementation |
| `gD` | Normal | Go to declaration |
| `K` | Normal | Hover documentation |
| `<leader>ca` | Normal | Code actions |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>D` | Normal | Type definition |
| `<leader>ds` | Normal | Document symbols |
| `<leader>ws` | Normal | Workspace symbols |
| `<leader>wa` | Normal | Add workspace folder |
| `<leader>wr` | Normal | Remove workspace folder |
| `<leader>wl` | Normal | List workspace folders |
| `[d` / `]d` | Normal | Previous/next diagnostic |
| `<leader>d` | Normal | Open floating diagnostic |
| `<leader>q` | Normal | Open diagnostics list |
| `<leader>do` | Normal | Toggle diagnostics |

### Git
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gs` | Normal | Git status |
| `<leader>gc` | Normal | Git commits |
| `<leader>gb` | Normal | Git branches |
| `<leader>gf` | Normal | Git files |
| `<leader>gcf` | Normal | Git commits for current file |
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
| `<C-c>` | Normal/Visual | Toggle comment |
| `<C-_>` | Normal/Visual | Toggle comment (alternative) |
| `<C-/>` | Normal/Visual | Toggle comment (alternative) |

### Advanced Search & Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<leader>?` | Normal | Find recently opened files |
| `<leader>sm` | Normal | Search marks |
| `<leader>sh` | Normal | Search help tags |
| `<leader>sw` | Normal | Search current word |
| `<leader>sd` | Normal | Search diagnostics |
| `<leader>sr` | Normal | Resume last search |
| `<leader>s.` | Normal | Search recent files |
| `<leader>sds` | Normal | Search LSP document symbols |
| `<leader><leader>` | Normal | Find existing buffers |
| `<leader>s/` | Normal | Live grep in open files |
| `<leader>/` | Normal | Fuzzy search in current buffer |

### Harpoon File Navigation
| Key | Mode | Action |
|-----|------|--------|
| `<leader>M` | Normal | Toggle harpoon menu |
| `<leader>m` | Normal | Add current file to harpoon |
| `<leader>1` | Normal | Go to harpoon file 1 |
| `<leader>2` | Normal | Go to harpoon file 2 |
| `<leader>3` | Normal | Go to harpoon file 3 |
| `<leader>4` | Normal | Go to harpoon file 4 |
| `<leader>p` | Normal | Previous harpoon file |
| `<leader>n` | Normal | Next harpoon file |

### Symbol Outline (Aerial)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>on` | Normal | Toggle aerial navigation |
| `{` | Normal | Previous symbol (when aerial attached) |
| `}` | Normal | Next symbol (when aerial attached) |

### Debugging
| Key | Mode | Action |
|-----|------|--------|
| `<F5>` | Normal | Start/Continue debug |
| `<F1>` | Normal | Step into |
| `<F2>` | Normal | Step over |
| `<F3>` | Normal | Step out |
| `<leader>b` | Normal | Toggle breakpoint |
| `<leader>B` | Normal | Set conditional breakpoint |
| `<F7>` | Normal | Toggle debug UI |

### Tmux Integration
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `<C-h>` | Normal | Move to left pane | Tmux + Neovim |
| `<C-j>` | Normal | Move to below pane | Tmux + Neovim |
| `<C-k>` | Normal | Move to above pane | Tmux + Neovim |
| `<C-l>` | Normal | Move to right pane | Tmux + Neovim |
| `<C-\>` | Normal | Move to previous pane | Tmux + Neovim |

### Tmux Pane Management
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `prefix -` | Tmux | Split window horizontally | Tmux only |
| `prefix _` | Tmux | Split window vertically | Tmux only |
| `prefix h` | Tmux | Move to left pane | Tmux only |
| `prefix j` | Tmux | Move to below pane | Tmux only |
| `prefix k` | Tmux | Move to above pane | Tmux only |
| `prefix l` | Tmux | Move to right pane | Tmux only |
| `prefix >` | Tmux | Swap pane with next | Tmux only |
| `prefix <` | Tmux | Swap pane with previous | Tmux only |
| `prefix +` | Tmux | Maximize current pane | Tmux only |
| `prefix H` | Tmux | Resize pane left | Tmux only |
| `prefix J` | Tmux | Resize pane down | Tmux only |
| `prefix K` | Tmux | Resize pane up | Tmux only |
| `prefix L` | Tmux | Resize pane right | Tmux only |

### Tmux Window Management
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `prefix C-c` | Tmux | Create new session | Tmux only |
| `prefix C-f` | Tmux | Find and switch to session | Tmux only |
| `prefix BTab` | Tmux | Switch to last session | Tmux only |
| `prefix C-h` | Tmux | Previous window | Tmux only |
| `prefix C-l` | Tmux | Next window | Tmux only |
| `prefix C-S-H` | Tmux | Swap window with previous | Tmux only |
| `prefix C-S-L` | Tmux | Swap window with next | Tmux only |
| `prefix Tab` | Tmux | Move to last active window | Tmux only |
| `prefix e` | Tmux | Edit tmux config | Tmux only |
| `prefix r` | Tmux | Reload tmux config | Tmux only |
| `prefix m` | Tmux | Toggle mouse mode | Tmux only |

### Tmux Copy Mode & Buffers
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `prefix Enter` | Tmux | Enter copy mode | Tmux only |
| `v` | Copy | Begin selection | In copy mode |
| `C-v` | Copy | Rectangle toggle | In copy mode |
| `y` | Copy | Copy selection and cancel | In copy mode |
| `Escape` | Copy | Cancel selection | In copy mode |
| `H` | Copy | Start of line | In copy mode |
| `L` | Copy | End of line | In copy mode |
| `prefix b` | Tmux | List paste buffers | Tmux only |
| `prefix p` | Tmux | Paste from top buffer | Tmux only |
| `prefix P` | Tmux | Choose buffer to paste | Tmux only |
| `prefix y` | Tmux | Copy to system clipboard | Tmux only |

### Neo-tree File Explorer
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `<Space>` | Normal | Toggle node | In Neo-tree |
| `<Enter>` | Normal | Open file | In Neo-tree |
| `<Esc>` | Normal | Cancel/Close | In Neo-tree |
| `P` | Normal | Toggle preview | In Neo-tree |
| `l` | Normal | Open file | In Neo-tree |
| `S` | Normal | Open in split | In Neo-tree |
| `s` | Normal | Open in vsplit | In Neo-tree |
| `t` | Normal | Open in new tab | In Neo-tree |
| `w` | Normal | Open with window picker | In Neo-tree |
| `C` | Normal | Close node | In Neo-tree |
| `z` | Normal | Close all nodes | In Neo-tree |
| `a` | Normal | Add file | In Neo-tree |
| `A` | Normal | Add directory | In Neo-tree |
| `d` | Normal | Delete file | In Neo-tree |
| `r` | Normal | Rename file | In Neo-tree |
| `y` | Normal | Copy to clipboard | In Neo-tree |
| `x` | Normal | Cut to clipboard | In Neo-tree |
| `p` | Normal | Paste from clipboard | In Neo-tree |
| `c` | Normal | Copy file | In Neo-tree |
| `m` | Normal | Move file | In Neo-tree |
| `q` | Normal | Close window | In Neo-tree |
| `R` | Normal | Refresh | In Neo-tree |
| `?` | Normal | Show help | In Neo-tree |
| `<` | Normal | Previous source | In Neo-tree |
| `>` | Normal | Next source | In Neo-tree |
| `i` | Normal | Show file details | In Neo-tree |

### Neo-tree Filesystem Navigation
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `<BS>` | Normal | Navigate up | In filesystem view |
| `.` | Normal | Set as root | In filesystem view |
| `H` | Normal | Toggle hidden files | In filesystem view |
| `/` | Normal | Fuzzy finder | In filesystem view |
| `D` | Normal | Fuzzy finder directory | In filesystem view |
| `#` | Normal | Fuzzy sorter | In filesystem view |
| `f` | Normal | Filter on submit | In filesystem view |
| `<C-x>` | Normal | Clear filter | In filesystem view |
| `[g` | Normal | Previous git modified | In filesystem view |
| `]g` | Normal | Next git modified | In filesystem view |
| `oc` | Normal | Order by created | In filesystem view |
| `od` | Normal | Order by diagnostics | In filesystem view |
| `og` | Normal | Order by git status | In filesystem view |
| `om` | Normal | Order by modified | In filesystem view |
| `on` | Normal | Order by name | In filesystem view |
| `os` | Normal | Order by size | In filesystem view |
| `ot` | Normal | Order by type | In filesystem view |

### Neo-tree Buffer Management
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `bd` | Normal | Delete buffer | In buffer view |
| `<BS>` | Normal | Navigate up | In buffer view |
| `.` | Normal | Set as root | In buffer view |
| `oc` | Normal | Order by created | In buffer view |
| `od` | Normal | Order by diagnostics | In buffer view |
| `om` | Normal | Order by modified | In buffer view |
| `on` | Normal | Order by name | In buffer view |
| `os` | Normal | Order by size | In buffer view |
| `ot` | Normal | Order by type | In buffer view |

### Neo-tree Git Status
| Key | Mode | Action | Context |
|-----|------|--------|---------|
| `A` | Normal | Git add all | In git status view |
| `gu` | Normal | Git unstage file | In git status view |
| `ga` | Normal | Git add file | In git status view |
| `gr` | Normal | Git revert file | In git status view |
| `gc` | Normal | Git commit | In git status view |
| `gp` | Normal | Git push | In git status view |
| `gg` | Normal | Git commit and push | In git status view |
| `oc` | Normal | Order by created | In git status view |
| `od` | Normal | Order by diagnostics | In git status view |
| `om` | Normal | Order by modified | In git status view |
| `on` | Normal | Order by name | In git status view |
| `os` | Normal | Order by size | In git status view |
| `ot` | Normal | Order by type | In git status view |

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
