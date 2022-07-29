syntax enable
set nu
set cursorline

let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\mk"
set noexpandtab
else
set ts=4
set sw=4
set expandtab
endif
set autoindent
set smarttab

nnoremap j gj
nnoremap k gk

set ruler
set ignorecase
set smartcase
set autowrite
set foldmethod=indent
set wildmenu
set wildmode=longest:list,full
set nobackup
set nowritebackup
set noswapfile

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

set splitright
set splitbelow
set equalalways
set eadirection=both


