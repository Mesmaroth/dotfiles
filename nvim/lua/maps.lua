local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Telescope
local status, telescope = pcall(require, "telescope.builtin")
if status then
    map("n", "<leader>ff", telescope.find_files)
    map("n", "<leader>fd", telescope.live_grep)
    map("n", "<leader>fb", telescope.buffers)
    map("n", "<leader>fh", telescope.help_tags)
    map("n", "<leader>fs", telescope.git_status)
    map("n", "<leader>fc", telescope.git_commits)
else
    print("Telescope not found")
end


-- Harpoon
local status1, harpoon_mark = pcall(require, "harpoon.mark")
local status2, harpoon_ui = pcall(require, "harpoon.ui")
if status1 and status2 then
    map("n", "<leader>a", harpoon_mark.add_file)
    map("n", "<leader>e", harpoon_ui.toggle_quick_menu)

    map("n", "<leader>1", function() harpoon_ui.nav_file(1) end)
    map("n", "<leader>2", function() harpoon_ui.nav_file(2) end)
    map("n", "<leader>3", function() harpoon_ui.nav_file(3) end)
    map("n", "<leader>4", function() harpoon_ui.nav_file(4) end)
else 
  print ("Harpoon not found")
end

-- Directory Browser
map("n", "<leader>pv", vim.cmd.Ex)

-- Source current file
map("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- Save
map("n", "<leader>w", "<CMD>update<CR>")
map("n", "<leader>ww", "<CMD>x<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- Windows
map("n", "<leader>h", "<CMD>vsplit<CR>")
map("n", "<leader>hh", "<CMD>split<CR>")

-- NeoTree
map("n", "<leader>o", "<CMD>Neotree toggle<CR>")
--map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

-- Markdown Preview
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
