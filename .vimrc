syntax on
syntax enable
set number
set linespace=3
set guifont=Fira\ Code:h12

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set complete+=kspell
set completeopt=menuone,longest
set colorcolumn=80

nnoremap <leader>f :find *

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
colorscheme monokai
highlight ColorColumn ctermbg=0 guibg=lightgrey 

set path+=**
set wildignore+=**node_modules/**


" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call plug#begin('~/.vim/plugged')
Plug 'srcery-colors/srcery-vim'
Plug 'rainglow/vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'sbdchd/neoformat'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'vim-airline/vim-airline'
Plug 'sickill/vim-monokai'
Plug 'KurtPreston/vimcolors'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/danro/rename.vim.git'

Plug 'christoomey/vim-run-interactive'
Plug 'croaky/vim-colors-github'
Plug 'danro/rename.vim'
Plug 'majutsushi/tagbar'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/tComment'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'godlygeek/tabular'
Plug 'msanders/snipmate.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'altercation/vim-colors-solarized'
Plug 'othree/html5.vim'
Plug 'xsbeats/vim-blade'
Plug 'Raimondi/delimitMate'
Plug 'groenewege/vim-less'

Plug 'Lokaltog/vim-easymotion'
Plug 'klen/python-mode'
Plug 'easymotion/vim-easymotion'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

" Load all plugins now.


