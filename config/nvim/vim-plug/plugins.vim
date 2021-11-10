call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " File Explorer | Disabled because testing coc-explorer
    " Plug 'scrooloose/NERDTree'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Dracula Theme | Disabled because onedark 
    "     Plug 'dracula/vim', { 'as': 'dracula' }
    
    " Vim Dogrun theme | Disabled because testing coc-explorer
    " Plug 'wadackel/vim-dogrun'

    " One Dark theme
    Plug 'joshdick/onedark.vim'

    " Intellisense COC
    Plug 'neoclide/coc.nvim',{'branch':'release'}

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " TS Syntax
    Plug 'HerringtonDarkholme/yats.vim'

    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Sneak
    Plug 'justinmk/vim-sneak'
    
    " Nerd commenter
    " Plug 'preservim/nerdcommenter'
    
    " Better Comments
      Plug 'tpope/vim-commentary'
    
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Dev Icons | Always load devicons as the very last [wiki]
    Plug 'ryanoasis/vim-devicons'

    call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

