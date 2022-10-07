

local M = {}

-- local starts_with = require("user.utils").starts_with
local ends_with = require("user.utils").ends_with

M.setup = function()
  local config_dir = vim.fn.stdpath('config') .. '/lua/user/conf'
  -- plugins do not need to load, NOTE: no .lua suffix required
  local enabled_plugins = {
    --"init", -- we don't need to load init again
    "toggleterm",
    "nvim-tree",
    "whichkey",
    "tabline",
    "lualine",
    "bufferline",
    "autopairs",
    "notify",
    "impatient", -- speed up lua loading
    "todo-comments",
    "nvim-spectre", -- find and replace 
    "vim-illuminate",
    "telescope",
    "cmp",
    --"cmp-path",
   --"vim-illuminate"
  }

  local helper_set = {}
  for _, v in pairs(enabled_plugins) do
    helper_set[v] = true
  end
  
  for _, fname in pairs(vim.fn.readdir(config_dir)) do
    if ends_with(fname, ".lua") then
      local cut_suffix_fname = fname:sub(1, #fname - #'.lua')
      if helper_set[cut_suffix_fname] ~= nil then
        --print(cut_suffix_fname)
        local file = "user.conf." .. cut_suffix_fname
        local status_ok, _ = pcall(require, file)
        if not status_ok then
          vim.notify('Failed loading ' .. fname, vim.log.levels.ERROR)
        end
      end
    end
  end
end

M.setup()
