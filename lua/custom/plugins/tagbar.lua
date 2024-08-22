return {
  {
    'preservim/tagbar',
    config = function()
      vim.cmd [[nmap <F8> :TagbarToggle<CR>]]
    end,
  },
}
