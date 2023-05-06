return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "theHamsta/nvim-dap-virtual-text", config = true },
  },
  config = function()
    local dap = require "dap"

    local attach_node = {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    }
    dap.configurations.java = {
      {
        type = "java",
        request = 'launch',
        name = 'Launch file',
        program = "${file}",
      },
    }
    dap.configurations.javascript = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      attach_node,
    }
    dap.configurations.typescript = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
        runtimeExecutable = "ts-node",
        sourceMaps = true,
        protocol = "inspector",
        console = "integratedTerminal",
        resolveSourceMapLocations = {
          "${workspaceFolder}/dist/**/*.js",
          "${workspaceFolder}/**",
          "!**/node_modules/**",
        },
      },
      attach_node,
    }
  end,
}
