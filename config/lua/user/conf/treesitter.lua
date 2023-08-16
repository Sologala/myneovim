local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

allconfigs = require("nvim-treesitter.parsers").get_parser_configs()
-- allconfigs["cpp"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-cpp"
-- allconfigs["python"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-python"
-- allconfigs["yaml"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-yaml"
-- allconfigs["json"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-hjson"
-- allconfigs["bash"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-bash"
-- allconfigs["lua"].install_info.url = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-lua"
--
configs.setup {
  -- ensure_installed ="all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"cpp", "python", "yaml", "json", "bash", "lua"},
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {}, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
