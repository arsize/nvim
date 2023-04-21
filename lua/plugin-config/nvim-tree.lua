require'nvim-tree'.setup{
  filters = {
    dotfiles = false,
    custom = {".git"}
  },
  -- 不显示git状态图标
  git = {
    enable = false
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
}
