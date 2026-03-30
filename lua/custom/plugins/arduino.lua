return {
  'yuukiflow/Arduino-Nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'neovim/nvim-lspconfig',
  },
  config = function()
    -- Set up LSP for Arduino files
    -- require('Arduino-Nvim.lsp').setup()
    -- Load Arduino plugin for .ino files
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'arduino',
      callback = function()
        require 'Arduino-Nvim'
      end,
    })
  end,
}
