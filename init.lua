require("core.options")
require("core.keymaps")
require("core.lsp")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Import color theme based on environment variable NVIM_THEME
local env_var_nvim_theme = os.getenv("NVIM_THEME") or "nord"

-- Define a table of theme modules
local themes = {
  nord = "plugins.themes.nord",
  onedark = "plugins.themes.onedark",
}

-- Setup plugins
require("lazy").setup({
  require(themes[env_var_nvim_theme]),
  require("plugins.telescope"),
  require("plugins.lualine"),
  require("plugins.bufferline"),
  require("plugins.neo-tree"),
  require("plugins.alpha"),
  require("plugins.indent-blinkline"),
  require("plugins.lazygit"),
  require("plugins.comment"),
  require("plugins.gitsigns"),
  require("plugins.database"),
  require("plugins.misc"),
  require("plugins.harpoon"),
  -- require 'plugins.avante',
  -- require 'plugins.chatgtp',
  require("plugins.aerial"),
  require("plugins.vim-tmux-navigator")
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

-- Function to check if a file exists
-- @todo: should be transferred to utils/filesystem
local function file_exists(file)
  local f = io.open(file, "r")
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Path to the session file
local session_file = ".session.vim"

-- Check if the session file exists in the current directory
if file_exists(session_file) then
  -- Source the session file
  vim.cmd("source" .. session_file)
end

-- The line beneath this is called 'modeline'. See ':help modeline'
-- vim: ts=2 sts=2 sw=2 et
