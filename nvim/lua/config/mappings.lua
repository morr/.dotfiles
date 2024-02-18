local function map(mode, lhs, rhs, opts)
   if opts == nil then
     opts = {}
   end
   -- set default value if not specify
   if opts.noremap == nil then
      opts.noremap = true
   end
   if opts.silent == nil then
      opts.silent = true
   end

   vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- open nvim config
map("n", ",v", ":e ~/.config/nvim/init.lua<CR>")

-- insert newline after current line
map("n", "<cr>", "o<Esc>")

-- insert newline before current line
map("n", "<s-cr>", "O<Esc>")

-- turn off highlighting and clear messages
map("n", "<space>", ":nohlsearch<Bar>:echo<cr>")

-- sort selection
map("v", "<c-s>", ":sor<cr>")


--vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- better up/down
   --vim.keymap.set({ "n", "x" }, "j", function()
   --   return vim.v.count > 0 and "j" or "gj"
--end, { noremap = true, expr = true })
--vim.keymap.set({ "n", "x" }, "k", function()
--   return vim.v.count > 0 and "k" or "gk"
--end, { noremap = true, expr = true })

--map("n", "<C-u>", "<C-u>zz", {})
--map("n", "<C-d>", "<C-d>zz", {})
--map("n", "<C-b>", "<C-b>zz", {})
--map("n", "<C-f>", "<C-f>zz", {})

-- leader movements
--map("n", "<Leader>w", ":write<CR>", {})
--map("n", "<Leader>s", ":source %<CR>", {})
--map("n", "<Leader>v", ":cd ~/.config/nvim/<CR>:Telescope find_files<CR>", {})
--map("n", "<Leader>m", ":make<CR>", {})
--map("n", "<Leader>b", ":!busted %<CR>", {})

-- system clipboard
--map({ "n", "v" }, "<Leader>y", '"+y', {})
--map({ "n" }, "<Leader>Y", '"+y$', {})

--map({ "n", "v" }, "<Leader>p", '"+p', {})
--map({ "n", "v" }, "<Leader>P", '"+P', {})

-- window movements
--map("n", "<C-k>", "<C-w>k", {})
--map("n", "<C-j>", "<C-w>j", {})
--map("n", "<C-h>", "<C-w>h", {})
--map("n", "<C-l>", "<C-w>l", {})
--map("n", "<C-c>", "<C-w>c", {})
