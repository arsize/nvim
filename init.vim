" 基础设置
lua require('basic')
" 快捷键映射
lua require('keybindings')
" 插件管理
lua require('plugins')
" 主题
lua require('theme/nightfox')
set background=dark

" 插件配置
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/lualine')

" 退出时修改光标形状
if $TERM_PROGRAM =~ "iTerm"
  " reset cursor when vim exits
  au VimLeave * set guicursor=a:ver25-blinkon0
endif
