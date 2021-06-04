" Write using sudo
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Line numbers
set number

" Tabs = 4 spaces
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Useful mappings for managing tabs
nnoremap <C-n> :tabnew<cr>
nnoremap <C-x> :tabclose<cr>
nnoremap <C-PageDown> :tabnext<cr>
nnoremap <C-PageUp> :tabprevious<cr>

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" youcompleteme
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" dracula theme
let g:dracula_colorterm = 0
syntax enable
colorscheme dracula
