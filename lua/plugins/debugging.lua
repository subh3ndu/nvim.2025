return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    local dap, dapui = require('dap'), require('dapui')

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.lanuch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dap.adapters.godot = {
      type = 'server',
      host = '127.0.0.1',
      port = 6006,
    }

    dap.configurations.gdscript = {
      {
        type = 'godot',
        request = 'launch',
        name = 'Launch Main Scene',
        project = '${workspaceFolder}'
      }
    }

    vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start' })
    vim.keymap.set('n', '<F12>', dap.continue, { desc = 'Debug: Continue' })
    vim.keymap.set('n', '<F11>', dap.step_into, { desc = 'Debug: Step Into' })
    vim.keymap.set('n', '<F10>', dap.step_over, { desc = 'Debug: Step Over' })
    vim.keymap.set('n', '<F8>', dap.terminate, { desc = 'Debug: Terminate' })
    vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
    vim.keymap.set('n', '<leader>B', function()
      dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
    end, { desc = "Debug: Set Breakpoint" })
  end
}
