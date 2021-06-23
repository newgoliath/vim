set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vim/vimrc
let g:python3_host_prog = '/Users/jmaltin/.virtualenvs/py3nvim/bin/python3'

lua << EOF
  require'nvim-treesitter.configs'.setup {
  -- Modules and its options go here
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}

EOF

