return {
  'navarasu/onedark.nvim',
  priority = 10000,
  config = function()
    require('onedark').setup {
      style = 'warmer',
    }
    vim.cmd.colorscheme 'onedark'
  end,
}

-- vim: ts=2 sts=2 sw=2 et
