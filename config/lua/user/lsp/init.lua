local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("nvim-lspconfig not found!")
	return
end
local status_ok, _ = pcall(require, "lsp_signature")
if not status_ok then
    vim.notify("lsp_signature not found!")
	return
end


--vim.notify("nvim-lspconfig found!")

--require("user.lsp.lsp-installer")
require("user.lsp.my-config")
require("user.lsp.handlers").setup()
-- require("user.lsp.null-ls")
-- require("user.lsp.lsp-utils")
