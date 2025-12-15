return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- or if using mini.icons/mini.nvim
  dependencies = { "nvim-mini/mini.icons" },
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "FZF Files" },
    { "<leader>fi", "<cmd>FzfLua git_files<CR>", desc = "FZF Git Files" },
    { "<leader>f~", "<cmd>FzfLua files cwd=~/dotfiles<CR>", desc = "FZF Files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc = "FZF Grep" },
    { "<leader>fb", "<cmd>FzfLua builtin<CR>", desc = "FZF builtin" },
    { "<leader>fh", "<cmd>FzfLua helptags<CR>", desc = "FZF helptags" },
    { "<leader>fk", "<cmd>FzfLua keymaps<CR>", desc = "FZF keymaps" },
    { "<leader>fW", "<cmd>FzfLua grep_cWord<CR>", desc = "FZF grep WORD under cursor" },
    { "<leader>f/", "<cmd>FzfLua lgrep_curbuf<CR>", desc = "FZF live grep current buffer" },
    { "<leader><leader>", "<cmd>FzfLua buffers<CR>", desc = "FZF open buffers" },
    { "<leader>fo", "<cmd>FzfLua oldfiles<CR>", desc = "FZF old files" },
    { "<leader>fr", "<cmd>FzfLua resume<CR>", desc = "FZF resume" },
    { "<leader>fd", "<cmd>FzfLua diagnostics_document<CR>", desc = "FZF diagnostics" },
    { "<leader>fw", "<cmd>FzfLua grep_cword<CR>", desc = "FZF grep word under cursor" },
    { "<leader>f", "<cmd>FzfLua grep_visual<CR>", desc = "FZF visual grep", mode = "v" },
  },
  opts = {},
}
