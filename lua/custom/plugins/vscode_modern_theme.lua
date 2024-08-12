return {
  {
    'gmr458/vscode_modern_theme.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('vscode_modern').setup {
        cursorline = true,
        transparent_background = true,
        nvim_tree_darker = true,
      }
      vim.cmd.colorscheme 'vscode_modern'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et