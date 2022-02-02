
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)

-- Resize with arrows
--keymap("n", "<C-Up>", ":resize +2<CR>", opts)
--keymap("n", "<C-Down>", ":resize -2<CR>", opts)
--keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
--keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)

-- Insert --
-- Press hh fast to enter
keymap("i", "hh", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--Save and exit
keymap("n", "<leader>w" , ":w<CR>" , opts )
keymap("n", "<leader>q" , ":q<CR>" , opts )
keymap("n", "<leader>Q" , ":q!<CR>" , opts )

---:noh----
keymap("n" ,"<CR>" , ":noh<CR>" , opts )

keymap("n" , "<leader>r" , ':!tmux send-keys -t bottom "cc % -o %:r && ./%:r" Enter <CR>' , opts )

--pasting and copying
keymap("n" , "<leader>p" , '"+p' , opts)
keymap("n" , "<leader>y" , '"+y' , opts)
keymap("n","<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>" , opts)
