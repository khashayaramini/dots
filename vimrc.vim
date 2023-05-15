set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set clipboard=unnamedplus
"set cursorline
set hidden
set inccommand=split
" set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" space instead of tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-p> :Files<CR>
let g:OmniSharp_server_use_mono = 1

"let NERDTreeShowHidden=1
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    " Plug 'preservim/tagbar'
    " Plug 'glepnir/dashboard-nvim'
    " Plug 'junegunn/fzf'
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'
    " Plug 'tpope/vim-commentary'

    " Completion / linters / formatters
"    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    " Plug 'airblade/vim-gitgutter'
    "code
    "
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'kabouzeid/nvim-lspinstall'
    " " Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
    " " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'williamboman/mason.nvim'
    " Plug 'williamboman/mason-lspconfig.nvim'
    call plug#end()

" lua << EOF
" require'lspinstall'.setup()
" local servers = require'lspinstall'.installed_servers()
" for _, server in pairs(servers) do
"   require'lspconfig'[server].setup{}
" end
" EOF
