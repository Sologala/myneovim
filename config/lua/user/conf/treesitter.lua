local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

allconfigs = require("nvim-treesitter.parsers").get_parser_configs()
allconfigs["cpp"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-cpp.git"
allconfigs["python"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-python.git"
allconfigs["yaml"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-yaml.git"
allconfigs["json"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-hjson.git"
allconfigs["bash"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-bash.git"
allconfigs["lua"].install_info.uul = "~/.config/nvim/treesitter_parser_offline/parser_src/tree-sitter/tree-sitter-lua.git"

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
