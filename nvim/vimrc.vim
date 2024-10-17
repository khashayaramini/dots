set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
" set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

unmap f
unmap t

xnoremap <leader>p "_dP
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" space instead of tab
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set expandtab

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" nnoremap <F5> :wa <bar> :set makeprg=cd\ build\ &&\ cmake\ ../.\ -DCMAKE_BUILD_TYPE=debug\ -DCMAKE_EXPORT_COMPILE_COMMANDS=1\ &&\ cmake\ --build\ . <bar> :compiler gcc <bar> :make <bar> :! cd build && ./out <CR>
" nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
" nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
" nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
" nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
" nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>

" nnoremap <C-p> :Files<CR>
" let g:OmniSharp_server_use_mono = 1

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
Plug 'folke/tokyonight.nvim'
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
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" Plug 'mfussenegger/nvim-dap'
" Plug 'rcarriga/nvim-dap-ui'
" Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'ggandor/leap.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

" lua << EOF
" require'lspinstall'.setup()
" local servers = require'lspinstall'.installed_servers()
" for _, server in pairs(servers) do
"   require'lspconfig'[server].setup{}
" end
" EOF
