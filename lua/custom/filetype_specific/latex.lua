-- Automatically runs a linter that puts sentences on new lines each write
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.tex',
  command = 'silent! !bash /home/sean/.scripts/nvim/lint_latex_sentences.sh %',
})
