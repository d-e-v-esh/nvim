source $HOME/.config/nvim/vim-plug/plugins.vim

set number

inoremap jk <ESC>
set clipboard+=unnamedplus
set encoding=utf-8
set clipboard=unnamed
set mouse=a
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
colorscheme gruvbox

" vim-airline
let g:airline_powerline_fonts = 1


" Mappings to move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Remaps Ctrl-C to copy to system's clipboard
vnoremap <C-c> "*y
nnoremap <C-c> "*y

" Ctrl-S for saving the file
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Remaps \-p to paste from system's clipboard
nnoremap <leader>p "*p

" Easy Motion
map <leader>. <Plug>(easymotion-repeat)
map <leader>w <Plug>(easymotion-bd-w)
map <leader>e <Plug>(easymotion-bd-e)

nmap s         <Plug>(easymotion-s2)
xmap s         <Plug>(easymotion-s2)
nmap <Leader>s <Plug>(easymotion-sn)
xmap <Leader>s <Plug>(easymotion-sn)

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDTreeIgnore = ['^node_modules$']


" ---------------------------Syntastic---------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

