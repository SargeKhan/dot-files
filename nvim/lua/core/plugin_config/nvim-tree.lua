vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "s", action = "vsplit" },
        { key = "o", action = "edit" },
        { key = "x", action = "close_node" },
        { key = "C", action = "cd" },
      },
    },
  },
})

vim.keymap.set('n', 'tc', ':NvimTreeFindFile!<CR>')
vim.keymap.set('n', 'tt', ':NvimTreeToggle<CR>')
