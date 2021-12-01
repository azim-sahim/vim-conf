"PlugInstall

call plug#begin('~/.vim/plugged')
"themes

Plug 'arcticicestudio/nord-vim'

"plugins

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


"nim
Plug 'alaviss/nim.nvim'

Plug 'prabirshrestha/asyncomplete.vim'

call plug#end()



set number

set expandtab
set tabstop=2

set hlsearch
set incsearch

syntax on
colorscheme nord

set mouse=a

"conf to nim autocomplite

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })



"mappings


map <F2> :NERDTreeToggle<CR>
