-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/wen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/wen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/wen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/wen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/wen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Colorschemes = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/Colorschemes",
    url = "/home/wen/.config/nvim/plugin_offline/Colorschemes"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "/home/wen/.config/nvim/plugin_offline/LuaSnip"
  },
  ["autosave.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/autosave.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/autosave.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "/home/wen/.config/nvim/plugin_offline/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "/home/wen/.config/nvim/plugin_offline/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "/home/wen/.config/nvim/plugin_offline/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "/home/wen/.config/nvim/plugin_offline/friendly-snippets"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/impatient.nvim"
  },
  ["lsp_signature.nvim-0.2.0"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim-0.2.0",
    url = "/home/wen/.config/nvim/plugin_offline/lsp_signature.nvim-0.2.0"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-comment"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-notify"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "/home/wen/.config/nvim/plugin_offline/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/popup.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/telescope-live-grep-args.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/toggleterm.nvim"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "/home/wen/.config/nvim/plugin_offline/vim-illuminate"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/wen/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "/home/wen/.config/nvim/plugin_offline/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
