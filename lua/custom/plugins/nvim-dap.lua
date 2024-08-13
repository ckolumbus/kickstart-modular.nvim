-- src: https://aaronbos.dev/posts/debugging-csharp-neovim-nvim-dap
--
return {
  {
    'mfussenegger/nvim-dap',
    keys = {
        { '<F5>', '<Cmd>lua require\'dap\'.continue()<CR>' },
        { '<F10>', '<Cmd>lua require\'dap\'.step_over()<CR>' },
        { '<F11>', '<Cmd>lua require\'dap\'.step_into()<CR>' },
        { '<F12>', '<Cmd>lua require\'dap\'.step_out()<CR>' },
        { '<Leader>b', '<Cmd>lua require\'dap\'.toggle_breakpoint()<CR>' },
        { '<Leader>B', '<Cmd>lua require\'dap\'.set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>' },
        { '<Leader>lp', '<Cmd>lua require\'dap\'.set_breakpoint(nil, nil, vim.fn.input(\'Log point message: \'))<CR>' },
        { '<Leader>dr', '<Cmd>lua require\'dap\'.repl.open()<CR>' },
        { '<Leader>dl', '<Cmd>lua require\'dap\'.run_last()<CR>' },
    }
  },
  {

    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
