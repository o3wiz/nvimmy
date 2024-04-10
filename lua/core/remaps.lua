-- Buffer Navigation
--
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "previous buffer", silent = true, noremap = true })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "next buffer", silent = true, noremap = true })

-- NetRW
--
vim.keymap.set("n", "<leader>E", "<cmd>Vex! 30<cr>", { desc = "Toggle Netrw on the right", silent = true, noremap = true })
vim.keymap.set("n", "<D-e>", "<cmd>Vex! 30<cr>", { desc = "Toggle Netrw on the right", silent = true, noremap = true })

-- Command shell mode
--
vim.keymap.set("n", "<D-r>", ":!", { desc = "command (shell) mode", noremap = true })

-- Line manipulation
--
-- Line Movement
vim.keymap.set("n", "<A-j>", "<cmd>move .+1<cr>", { desc = "move line down [NORMAL MODE]", silent = true, noremap = true })
vim.keymap.set("n", "<A-k>", "<cmd>move .-2<cr>",   { desc = "move line up [NORMAL MODE]", silent = true, noremap = true })
vim.keymap.set("i", "<A-j>", "<esc><cmd>move .+1<cr>gi", { desc = "move line down [INSERT MODE]", silent = true, noremap = true })
vim.keymap.set("i", "<A-k>", "<esc><cmd>move .-2<cr>gi",   { desc = "move line up [INSERT MODE]", silent = true, noremap = true })
-- NOTE: <cmd> cannot be used here, it does not function currectly.
vim.keymap.set("v", "<A-j>", ":move '>+1<cr>gv", { desc = "move selection down", silent = true, noremap = true })
vim.keymap.set("v", "<A-k>", ":move '<-2<cr>gv", { desc = "move selection up", silent = true, noremap = true })
--
-- Line Duplication
vim.keymap.set("n", "<A-d>", "<cmd>copy .<cr>", { desc = "copy line down [NORMAL MODE]", silent = true, noremap = true })
vim.keymap.set("i", "<A-d>", "<esc><cmd>copy .<cr>gi<down>", { desc = "copy line down [INSERT MODE]", silent = true, noremap = true })
vim.keymap.set("v", "<A-d>", ":copy '<-1<cr>gv", { desc = "copy selection down", silent = true, noremap = true })

-- Identations
--
vim.keymap.set("v", "<", "<gv", { desc = "contiguous untabbing", silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { desc = "contiguous tabbing", silent = true, noremap = true })

-- Diagnostic keymaps
--
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message", silent = true, noremap = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message", silent = true, noremap = true })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages", silent = true, noremap = true })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list", silent = true, noremap = true })

vim.keymap.set("v", "<", "<gv", { desc = "contiguous untabbing", silent = true, noremap = true })
