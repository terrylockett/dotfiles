print("hello Java")


local bundles = {
  vim.fn.glob(os.getenv("JAVA_DEBUG"), 1),
};

local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

vim.list_extend(bundles, vim.split(vim.fn.glob(os.getenv("JAVA_VSCODE_TEST"), 1), "\n"))

--
-- This is a filthy hack for iteams master project as root.
local root_path = ""
local current_buf_path = vim.fn.expand('%:p:h');
if(string.find(current_buf_path, "/ibm/scanners/") ) then
  root_path = "/Users/terry/ibm/scanners/master"
else
  root_path = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1])
end


local config = {
	-- cmd = {os.getenv("JDTLS_PATH"), '-data', os.getenv("JDTLS_DATA_PATH") .. workspace_dir},
  cmd = {
    os.getenv("JDTLS_PATH"),
    '--java-executable',
    os.getenv("JAVA_SE_17") .. '/bin/java',
    '-data', os.getenv("JDTLS_DATA_PATH") .. workspace_dir
  },

  root_dir = root_path,

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
								},
                {
                  sha256 = "9e321f1f8d64a35ad4d7faa121187a65982bdaede95ae99fbdb107eead3a82b9",
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
          name = "JavaSE_1_8",
          path = os.getenv("JAVA_SE_1_8")
        },
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
