set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

set colorcolumn=80
set signcolumn=yes

call plug#begin()
Plug 'ellisonleao/gruvbox.nvim'
" Telescope dependencies
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
" Lualine dependencies
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme gruvbox


lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
