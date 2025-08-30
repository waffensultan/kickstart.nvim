-- Set :bdelete to :Bdelete
vim.cmd([[
  command! -bang -nargs=? -complete=buffer Bd Bdelete<bang> <args>
]])
