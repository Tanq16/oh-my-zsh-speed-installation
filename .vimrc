" General
set tabstop=4
set wildmenu
set expandtab
set laststatus=2
set autoindent
set smartindent
set number relativenumber
colorscheme nord
set ignorecase
set smartcase

" Lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \}
let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be"  }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9"  }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba"  }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb"  }
set noshowmode

" Search highlight to ensure match while typing
set hlsearch is
" remove highlight by pressing \\
nnoremap \ :noh<return>

" Shift selected lines around
xnoremap J :move '<-2<CR>gv-gv
xnoremap K :move '<+1<CR>gv-gv

" Others
set mouse=a
set cursorline
set rtp+=~/.fzf
filetype plugin on

" Buttons
nnoremap <C-m> :tabnext<return>
nnoremap <C-n> :tabprev<return>
nnoremap ff :FZF ~<return>
nnoremap tt :tabnew<return>
nnoremap nm :set nonumber! norelativenumber!<return>

" Remember last edit
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
