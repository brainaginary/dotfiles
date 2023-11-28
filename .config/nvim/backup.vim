:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/lervag/vimtex' "Vimtex
Plug 'https://github.com/xuhdev/vim-latex-live-preview' "Latex Live Preview
Plug 'https://github.com/SirVer/ultisnips' "ultisnips
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } "catppuccin theme
Plug 'https://github.com/jiangmiao/auto-pairs' "autopair brackets
Plug 'preservim/nerdtree' "NerdTree (file manager)
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader = "\<Space>"

" cycle tabs "
nnoremap <leader><tab> :tabnext<CR>
nnoremap <leader>s :vsplit<CR>

" no highlighting of brackets "
" let loaded_matchparen = 1 "

" vim-airlines "
let g:airline_theme = 'catppuccin'
" let g:airline#extensions#tabline#enabled = 1 "
let g:WebDevIconsUnicodeDecorateBuffer = 1


" Enable Auto Pairs "
let g:AutoPairsMapBS = 1 "for backspace"
let g:AutoPairs = {
  \ '(' : ')',
  \ '[' : ']',
  \ '{' : '}',
  \ "'" : "'"
  \ } " set which symbols to autopair "

" colorscheme "
colorscheme catppuccin-mocha

" Toggle NerdTree "
nnoremap <C-e> :NERDTreeToggle<CR>

" NerdTree confs "
let g:NERDTreeWinSize = 22
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

" enable vim-devicons for NerdTree"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesExtensionLength = 1
let g:WebDevIconsUnicodeDecorateFileNodesExtensionLength = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" General "
filetype plugin on
syntax enable

" latex-pdf viewer "
let g:vimtex_view_method = 'zathura'
let g:livepreview_previewer = 'zathura'

" make code easier to read "
set conceallevel=1

" code concealling for latex "
let g:tex_conceal='abdmg'

"Unltisnip config "
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

