-- local client = vim.lsp.start_client {
--

local launch_urest_lsp = function()

  local config = vim.lsp.start_client {
    name = "urest-test",
    -- cmd = {"/Users/terry/ibm/urest-lsp/gradlew", "-p", "/Users/terry/ibm/urest-lsp", "run", "--console=plain", "-q"}
    cmd = {"java", "-jar", "/Users/terry/ibm/urest-lsp/app/build/libs/app-all.jar"}
  }

  local client_id = vim.lsp.start_client(config);

    vim.notify 'attempt to attach lsp buf'

  if client_id then
    -- vim.lsp.buf_attach_client(vim.api.nvim_get_current_buf(), client_id)
    vim.lsp.buf_attach_client(1, client_id)
  else
    vim.notify "no attach :("
  end

end


vim.api.nvim_create_user_command(
  'LaunchUrestLsp',
  launch_urest_lsp,
  {desc = 'Start urest server'}
)


-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(args)
--     -- vim.keymap.set({'n', 'v'}, '<a-CR>', vim.lsp.buf.code_action, { buffer = args.buf, silent = true })
--     vim.notify "buff attached :)"
--   end
-- })






--
-- if not client then
--   vim.notify "lsp client didnt attach good"
--   return
-- end
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "xml",
--   callback = function()
--     vim.notify "XML buff attaching"
--     vim.lsp.buf_attach_client(vim.api.nvim_get_current_buf(), client)
--   end
-- })
