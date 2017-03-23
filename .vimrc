set nu
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline
set showmatch
nnoremap j gj
nnoremap k gk
colorscheme elflord 
set guifont=Hack

" autocomplete braces and parenthases
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ( ()<Esc>i

" Vim-plug plugins
call plug#begin()
function! BuildYCM(info)
    if a:info.status == 'installed'||a:info.force
        !./install.py
    endif
endfunction

Plug 'valloric/youcompleteme', {'do': function('BuildYCM')}
Plug 'scrooloose/nerdtree'
call plug#end()

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
