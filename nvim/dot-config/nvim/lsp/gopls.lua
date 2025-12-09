
vim.lsp.config('gopls', {
	settings = {
		gopls = {

			hints= {
				parameterNames= true,
				assignVariableTypes = true,
				compositeLiteralFields = true,
				constantValues = true,
				functionTypeParameters = true,

			},
		},
	},
})
