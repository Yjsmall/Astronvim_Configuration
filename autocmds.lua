local im_select = require "user.utils.im-select"
vim.api.nvim_create_augroup("im-select", { clear = true })

vim.api.nvim_create_autocmd("InsertLeave", {
  group = "im-select",
  callback = im_select.windowsInsertLeave,
})

vim.api.nvim_create_autocmd("InsertEnter", {
  group = "im-select",
  callback = im_select.windowsInsertEnter,
})

vim.api.nvim_create_autocmd("FocusGained", {
  group = "im-select",
  callback = im_select.windowsFocusGained,
})

vim.api.nvim_create_autocmd("FocusLost", {
  group = "im-select",
  callback = im_select.windowsFocusLost,
})
