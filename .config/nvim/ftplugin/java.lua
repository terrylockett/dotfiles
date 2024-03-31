print("hello Java")

local bundles = {
  vim.fn.glob(os.getenv("JAVA_DEBUG"), 1),
};

local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

vim.list_extend(bundles, vim.split(vim.fn.glob(os.getenv("JAVA_VSCODE_TEST"), 1), "\n"))

local config = {
	cmd = {os.getenv("JDTLS_PATH"), '-data', os.getenv("JDTLS_DATA_PATH") .. workspace_dir},

	root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),

	init_options = {
		bundles = bundles,
		settings = {
			java = {
				imports = {
					gradle = {
						wrapper = {
							checksums = {
								{
									sha256 = "01f2365fb6d728a44b750e16b28cc23a1d5aefd199289978c3fffedf538d3bfa",
									allowed = true
								}
							}
						}
					}
				},

			}
		}
	},
	settings = {
		java = {
			configuration = {
				{
					name = "JavaSE-11",
					path = os.getenv("JAVA_SE_11")
				},
				{
					name = "JavaSE-17",
					path = os.getenv("JAVA_SE_17")
				},
			},
		}
	},
}
require('jdtls').start_or_attach(config)
