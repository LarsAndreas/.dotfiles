"Default
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4

:set relativenumber

let mapleader = ' '
"Defaults
nnoremap <leader>j <C-d>
nnoremap <leader>k <C-u>

"Harpoon
nnoremap <leader>g :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>e :lua require("harpoon.ui").toggle_quick_menu()<CR>

nnoremap <leader>a :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>s :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>d :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>f :lua require("harpoon.ui").nav_file(4)<CR>

"Telescope
nnoremap <Leader>f :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>


"Omnisharp
augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
augroup END

let g:Omnisharp_server_use_mono = 1
let g:OmniSharp_translate_cygwin_wsl = 1

call plug#begin('~/.vim/plugged')
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'

Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

" Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

"Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'valloric/MatchTagAlways'
"Plug 'jiangmiao/auto-pairs'
call plug#end() 
