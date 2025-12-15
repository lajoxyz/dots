vim.keymap.set("n", "<leader>-", "<cmd> Oil <cr>", { desc = "Open Oil" })
vim.keymap.set("n", "<leader>~", "<cmd> Oil ~/.config/nvim <cr>", { desc = "Open Oil" })
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })
vim.keymap.set("n", "==", function()
  require("conform").format({
    timeout_ms = 500,
    lsp_format = "fallback",
  })
end, { desc = "Conform Format" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
-- Normal mode
-- Or use mnemonics with 'g' prefix
vim.keymap.set({ "n", "v" }, "cy", '"+y') -- "go yank"
vim.keymap.set({ "n", "v" }, "cp", '"+p') -- "go paste"

vim.keymap.set("n", "<leader>bo", function()
  local current = vim.fn.bufnr("%")
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  local closed = 0

  for _, buf in ipairs(buffers) do
    if buf.bufnr ~= current then
      vim.cmd("bdelete " .. buf.bufnr)
      closed = closed + 1
    end
  end

  vim.notify("Closed " .. closed .. " buffer(s)", vim.log.levels.WARN)
end, { desc = "Close all buffers but current" })
