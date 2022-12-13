vim.cmd [[
  imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
  ]]
vim.api.nvim_set_var("copilot_filetypes", {
  ["dap-repl"] = false,
})
