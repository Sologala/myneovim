local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "http://81.70.239.68:3000/sologala/packer.nvim.git",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    -- open_fn = function()
    --   return require("packer.util").float { border = "rounded" }
    -- end,
  },
}


--  useage
-- use {
--   "myusername/example",        -- The plugin location string
--   -- The following keys are all optional
--   disable = boolean,           -- Mark a plugin as inactive
--   as = string,                 -- Specifies an alias under which to install the plugin
--   installer = function,        -- Specifies custom installer. See "custom installers" below.
--   updater = function,          -- Specifies custom updater. See "custom installers" below.
--   after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
--   rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
--   opt = boolean,               -- Manually marks a plugin as optional.
--   branch = string,             -- Specifies a git branch to use
--   tag = string,                -- Specifies a git tag to use. Supports "*" for "latest tag"
--   commit = string,             -- Specifies a git commit to use
--   lock = boolean,              -- Skip updating this plugin in updates/syncs. Still cleans.
--   run = string, function, or table, -- Post-update/install hook. See "update/install hooks".
--   requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
--   rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
--   config = string or function, -- Specifies code to run after this plugin is loaded.
--   -- The setup key implies opt = true
--   setup = string or function,  -- Specifies code to run before this plugin is loaded.
--   -- The following keys all imply lazy-loading and imply opt = true
--   cmd = string or list,        -- Specifies commands which load this plugin. Can be an autocmd pattern.
--   ft = string or list,         -- Specifies filetypes which load this plugin.
--   keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
--   event = string or list,      -- Specifies autocommand events which load this plugin.
--   fn = string or list          -- Specifies functions which load this plugin.
--   cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
--   module = string or list      -- Specifies Lua module names for require. When requiring a string which starts
--                                -- with one of these module names, the plugin will be loaded.
--   module_pattern = string/list -- Specifies Lua pattern of Lua module names for require. When
--   requiring a string which matches one of these patterns, the plugin will be loaded.
-- }



return packer.startup(function(use)
  -- My plugplenaryins here
  -- use "wbthomason/packer.nvim" -- Have packer manage itself
  --use '~/.config/nvim/plugin_offline/impatient.nvim'
  --use '~/.config/nvim/plugin_offline/popup.nvim'
  --use '~/.config/nvim/plugin_offline/nvim-notify'
  --use '~/.config/nvim/plugin_offline/nvim-web-devicons'
    use "/root/myneovim/config/plugin_offline/Colorschemes"
    use "/root/myneovim/config/plugin_offline/Comment.nvim"
    use "/root/myneovim/config/plugin_offline/LuaSnip"
    use "/root/myneovim/config/plugin_offline/autosave.nvim"
    use "/root/myneovim/config/plugin_offline/bufferline.nvim"
    use "/root/myneovim/config/plugin_offline/cmp-nvim-lsp"
    use "/root/myneovim/config/plugin_offline/cmp-path"
    use "/root/myneovim/config/plugin_offline/cmp_luasnip"
    use "/root/myneovim/config/plugin_offline/friendly-snippets"
    use "/root/myneovim/config/plugin_offline/gitsigns.nvim"
    use "/root/myneovim/config/plugin_offline/impatient.nvim"
    use "/root/myneovim/config/plugin_offline/lsp_signature.nvim-0.2.0"
    use "/root/myneovim/config/plugin_offline/lualine.nvim"
    use "/root/myneovim/config/plugin_offline/nvim-autopairs"
    use "/root/myneovim/config/plugin_offline/nvim-cmp"
    use "/root/myneovim/config/plugin_offline/nvim-comment"
    use "/root/myneovim/config/plugin_offline/nvim-lightbulb"
    use "/root/myneovim/config/plugin_offline/nvim-lspconfig"
    use "/root/myneovim/config/plugin_offline/nvim-notify"
    use "/root/myneovim/config/plugin_offline/nvim-spectre"
    use "/root/myneovim/config/plugin_offline/nvim-tree.lua"
    use "/root/myneovim/config/plugin_offline/nvim-web-devicons"
    use "/root/myneovim/config/plugin_offline/packer.nvim"
    use "/root/myneovim/config/plugin_offline/plenary.nvim"
    use "/root/myneovim/config/plugin_offline/popup.nvim"
    use "/root/myneovim/config/plugin_offline/telescope-live-grep-args.nvim"
    use "/root/myneovim/config/plugin_offline/telescope-ui-select.nvim"
    use "/root/myneovim/config/plugin_offline/telescope.nvim"
    use "/root/myneovim/config/plugin_offline/todo-comments.nvim"
    use "/root/myneovim/config/plugin_offline/toggleterm.nvim"
    use "/root/myneovim/config/plugin_offline/trouble.nvim"
    use "/root/myneovim/config/plugin_offline/vim-cpp-modern"
    use "/root/myneovim/config/plugin_offline/vim-illuminate"
    use "/root/myneovim/config/plugin_offline/which-key.nvim"
    -- for file in lfs.dir(plugin_offline_path) do
    --     if file ~= "." and file ~= ".." then
    --         --print(plugin_offline_path .. '/' ..file)
    --         use(plugin_offline_path .. '/' ..file)
    --     end
    -- end
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
