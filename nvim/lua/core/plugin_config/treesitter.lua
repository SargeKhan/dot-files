require'nvim-treesitter.configs'.setup {
  --- A list of parsers that must be installed
  ensure_installed = { "lua", "javascript", "typescript" },
  -- Install parsers syncrhonously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
