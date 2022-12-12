-- dap.adapters.remote_python = {
--   type = 'server',
--   host = '127.0.0.1',
--   port = 5678,
-- }
require('dap-python').setup('/usr/local/share/miniconda3/bin/python')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'attach',
  name = 'Remote Python: Attach',
  port = 5678,
  host = "127.0.0.1",
  mode = "remote",
  cwd = vim.fn.getcwd(),
  pathMappings = {
    {
      localRoot = function()
        return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file")
        --"/home/alpha2phi/workspace/alpha2phi/python-apps/ml-yolo/backend", -- Local folder the code lives
      end,
      remoteRoot = function()
        return vim.fn.input("Container code folder > ", "/", "file")
        -- "/fastapi", -- Wherever your Python code lives in the container.
      end,
    },
  },
})
-- dap.configurations.python = {
--   {
--     type = 'remote_python',
--     request = 'attach',
--     mode = 'remote',
--     name = "Container Attach Debug",
--     port = 5678,
--     host = '127.0.0.1',
--     cwd = vim.fn.getcwd(),
--     pathMappings = {
--       localRoot = function()
--         return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file")
--       end,
--       remoteRoot = function()
--         return vim.fn.input("Remote code folder > ", vim.fn.getcwd(), "file")
--       end,
--     },
--   },
-- }
