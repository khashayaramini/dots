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
set foldlevel=99
set foldmarker={,}
set foldmethod=marker
set hlsearch
set path+=**

silent! unmap f
silent! unmap t

xnoremap <leader>p "_dP
nnoremap <C-c> :noh<CR>

" space instead of tab
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set expandtab

" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
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
" Plug 'jiangmiao/auto-pairs'
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

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'williamboman/mason.nvim'

Plug 'junegunn/vim-plug'




Plug 'chentoast/marks.nvim'



" Diff View

Plug 'sindrets/diffview.nvim'



" LSP Configuration & Plugins

Plug 'neovim/nvim-lspconfig'

Plug 'williamboman/mason.nvim'

Plug 'williamboman/mason-lspconfig.nvim'

Plug 'j-hui/fidget.nvim'

Plug 'folke/neodev.nvim'



" Autocompletion

Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'L3MON4D3/LuaSnip'

Plug 'saadparwaiz1/cmp_luasnip'



" Treesitter

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'nvim-treesitter/nvim-treesitter-textobjects'



" Git Plugins

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rhubarb'

Plug 'lewis6991/gitsigns.nvim'



" UI Enhancements

Plug 'navarasu/onedark.nvim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'numToStr/Comment.nvim'



" Fuzzy Finder

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }



" Additional plugins

Plug 'folke/flash.nvim'
call plug#end()

" lua << EOF
" require'lspinstall'.setup()
" local servers = require'lspinstall'.installed_servers()
" for _, server in pairs(servers) do
"   require'lspconfig'[server].setup{}
" end
" EOF
"
" Enable using Leader + number to switch tabs
for i in range(1, 9)
    exec "nmap <Leader>" . i . " :" . i . "tabn<CR>"
    exec "nnoremap <Leader>" . i . " :" . i . "tabn<CR>"
endfor

" Close current tab with Ctrl + w
nnoremap <C-w> :tabclose<CR>
" nnoremap <Left> :echo "No left for you!"<CR>
" vnoremap <Left> :<C-u>echo "No left for you!"<CR>
" inoremap <Left> <C-o>:echo "No left for you!"<CR>
" nnoremap <right> :echo "No right for you!"<CR>
" vnoremap <right> :<C-u>echo "No right for you!"<CR>
" inoremap <right> <C-o>:echo "No right for you!"<CR>
" nnoremap <up> :echo "No up for you!"<CR>
" vnoremap <up> :<C-u>echo "No up for you!"<CR>
" inoremap <up> <C-o>:echo "No up for you!"<CR>
" nnoremap <down> :echo "No down for you!"<CR>
" vnoremap <down> :<C-u>echo "No down for you!"<CR>
" inoremap <down> <C-o>:echo "No down for you!"<CR>
"
nnoremap <S-up> :echo "No up for you!"<CR>
vnoremap <S-up> :<C-u>echo "No up for you!"<CR>
inoremap <S-up> <C-o>:echo "No up for you!"<CR>
nnoremap <S-down> :echo "No down for you!"<CR>
vnoremap <S-down> :<C-u>echo "No down for you!"<CR>
inoremap <S-down> <C-o>:echo "No down for you!"<CR>

nnoremap <C-up> :m .-2<CR>==
nnoremap <C-down> :m .+1<CR>==
vnoremap <C-up> :m '<-2<CR>gv=gv
vnoremap <C-down> :m '>+1<CR>gv=gv

" automatically close brackets, parethesis, double quotes, and single quotes
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
