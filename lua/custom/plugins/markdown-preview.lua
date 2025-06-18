return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreview<CR>', ft = 'markdown', desc = 'Markdown Preview' },
      { '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', ft = 'markdown', desc = 'Stop Preview' },
      { '<leader>mt', '<cmd>MarkdownPreviewToggle<CR>', ft = 'markdown', desc = 'Toggle Preview' },
    },
  },
}
