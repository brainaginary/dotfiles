" Plugins "
call plug#begin()
  Plug 'vim-airline/vim-airline'           " Status bar
  Plug 'ap/vim-css-color'                   " CSS Color Preview
  Plug 'lervag/vimtex'                      " Vimtex
  Plug 'xuhdev/vim-latex-live-preview'     " Latex Live Preview
  Plug 'SirVer/ultisnips'                   " UltiSnips
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }  " Catppuccin theme
  Plug 'jiangmiao/auto-pairs'              " Auto-pair brackets
  Plug 'preservim/nerdtree'                 " NERDTree (file manager)
  Plug 'nvim-tree/nvim-web-devicons'        " Nvim-web-devicons
  Plug 'ryanoasis/vim-devicons'
  Plug 'https://github.com/cohama/lexima.vim'
call plug#end()

" General Settings "
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set autoindent                " Enable auto-indentation
set tabstop=4                 " Set the number of spaces a tab counts for
set shiftwidth=4              " Set the number of spaces for auto-indentation
set smarttab                  " Use shiftwidth for tab behavior
set softtabstop=4             " Number of spaces to insert for a tab character
set mouse=a                   " Enable mouse support

" Leader Key "
let mapleader = "\<Space>"

" Key Mappings "
nnoremap <leader><tab> :tabnext<CR>  " Cycle through tabs
nnoremap <leader>s :vsplit<CR>       " Vertical split

" NERDTree Configuration "
nnoremap <C-e> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 22
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

" Lexima "
let g:lexima_enable_basic_rules = 1

" Vim-Airline Configuration "
let g:airline_theme = 'catppuccin'
let g:WebDevIconsUnicodeDecorateBuffer = 1

" Auto Pairs Configuration "
" let g:AutoPairsMapBS = 1          " Enable auto-pairs for backspace
" let g:AutoPairs = {
"  \ '(' : ')',
"  \ '[' : ']',
"  \ '{' : '}',
"  \ "'" : "'"
"  \ }

" Colorscheme "
colorscheme catppuccin-mocha

" LaTeX Configuration "
let g:vimtex_view_method = 'zathura'
let g:livepreview_previewer = 'zathura'
let g:tex_conceal='abdmg'         " Code concealing for LaTeX

" UltiSnips Configuration "
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Concealing Configuration "
set conceallevel=1              " Make code easier to read

" Enable file type detection, plugins, and syntax highlighting "
filetype plugin on
syntax enable

