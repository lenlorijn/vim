set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
nnoremap <leader>v <Plug>TaskList
let mapleader = "\<Space>"

set laststatus=2
set t_Co=256
set foldmethod=indent
set foldlevel=99
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set number
set relativenumber

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.twig set filetype=html
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

nmap <leader>a <Esc>:Ack!

set statusline+=%{fugitive#statusline()}

" Execute the tests
 nmap <silent><Leader>tf <Esc>:Pytest file<CR>
 nmap <silent><Leader>tc <Esc>:Pytest class<CR>
 nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" " cycle through test errors
 nmap <silent><Leader>tn <Esc>:Pytest next<CR>
 nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
 nmap <silent><Leader>te <Esc>:Pytest error<CR>

 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
