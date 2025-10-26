:set number
:set relativenumber
:set tabstop=4
:set syntax=cpp.doxygen

syntax on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/nyoom-engineering/oxocarbon.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'https://github.com/folke/tokyonight.nvim'
"Plug 'itchyny/lightline.vim'
"Plug 'vim-scripts/Gentooish-II'
"Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/neoclide/coc.nvim'
"Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rust-lang/rust.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-jp/vim-cpp'
Plug 'scrooloose/nerdtree'
"Plug 'sainnhe/vim-color-forest-night'
call plug#end()

set termguicolors
syntax enable
colorscheme oxocarbon
nnoremap <F3> :set relativenumber!<CR>
let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE

" Optional: Additional elements for better transparency
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Folded guibg=NONE ctermbg=NONE
hi FoldColumn guibg=NONE ctermbg=NONE

" Make everything transparent
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

" Terminal transparency
hi Terminal guibg=NONE ctermbg=NONE
hi TerminalNormal guibg=NONE ctermbg=NONE
hi TerminalNormalNC guibg=NONE ctermbg=NONE

" Split/window transparency
hi StatusLine guibg=NONE ctermbg=NONE
hi StatusLineNC guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE ctermbg=NONE
hi WinSeparator guibg=NONE ctermbg=NONE

" Auto-apply when colorscheme changes
autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
autocmd ColorScheme * hi Terminal guibg=NONE ctermbg=NONE
autocmd ColorScheme * hi TerminalNormal guibg=NONE ctermbg=NONE

" Enable status line always
set laststatus=2

" Define custom colors for statusline with TRANSPARENT background
hi User1 ctermbg=NONE ctermfg=cyan guibg=NONE guifg=#5fafd7
hi User2 ctermbg=NONE ctermfg=green guibg=NONE guifg=#87d787
hi User3 ctermbg=NONE ctermfg=yellow guibg=NONE guifg=#ffd787
hi User4 ctermbg=NONE ctermfg=red guibg=NONE guifg=#ff5f5f
hi User5 ctermbg=NONE ctermfg=magenta guibg=NONE guifg=#af5fd7

" Make statusline itself transparent
hi StatusLine ctermbg=NONE ctermfg=white guibg=NONE guifg=#ffffff
hi StatusLineNC ctermbg=NONE ctermfg=gray guibg=NONE guifg=#808080

" Colorful status line configuration
set statusline=
set statusline+=%1*                            " Switch to User1 color
set statusline+=\ %f\                          " File path
set statusline+=%2*                            " Switch to User2 color
set statusline+=\ %m%r\                        " Modified and readonly flags
set statusline+=%3*                            " Switch to User3 color
set statusline+=\ %y\                          " File type
set statusline+=%=                             " Right side alignment
set statusline+=%4*                            " Switch to User4 color
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\  " Encoding
set statusline+=%5*                            " Switch to User5 color
set statusline+=\ %p%%\ %l:%c\                 " Percentage, Line:Column

" Optional: Show git branch if you have fugitive plugin
" set statusline+=\ %{FugitiveStatusline()}
