set encoding=UTF-8

call plug#begin('~/.vim/bundle')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-rails'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim/vim-rspec'
Plug 'thoughtbot/vim-rspec'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'luochen1990/rainbow'
" new settings 18 June 2021
Plug 'othree/yajs.vim'
Plug 'tpope/vim-sensible'
Plug 'mhartington/oceanic-next'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs'

" need to be
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'prettier/vim-prettier', { 
   \ 'do': 'yarn install', 
   \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'html']}
"try to style
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-scripts/tComment'

"theme
colorscheme gruvbox
" Customizations
" set relativenumber
set number
set nocompatible
set showmatch
set ruler "show cursor position all the time
set showcmd "display incomplete commands
set autowrite " hopefully this will save buffers when I switch out of them
set laststatus=2 " always show status line
set smarttab
set noincsearch
set incsearch
set nohlsearch   "no highlighting
set guioptions-=m       " Can't remember :)
set guioptions-=T       " No toolbars
set guioptions-=r       " No scrollbars
set visualbell t_vb=    " Don't beep
set hidden              " Don't prompt to save when switching buffers


call plug#end()

" minimap 
" Leader key
let mapleader = " "

nnoremap <leader>q :q<cr>
inoremap jj <ESC>
inoremap kk <ESC>

"nerd tree mappings
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

"quicker split movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"easier splits inside vim nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <leader>w <C-w>v<C-w>l

"easy way to create new tabs
map <C-t> <esc>:tabnew<CR>
"shift left and right to cycle through tabs
noremap <S-l> gt
noremap <S-h> gT

set number
"fzf mappings
nnoremap <c-p> :GFiles --cached --others --exclude-standard<cr>

"leader a to get to Ack to search
nnoremap <leader>a :Ack
" leader k to search for the word under the cursor
nnoremap <leader>k :Ack <C-R><C-W><CR>
"assign ripgrep to search for ack
let g:ackprg = 'rg --vimgrep --no-heading'

"rspec vim mappings
map <Leader>s :call RunNearestSpec()<CR>:redraw!<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>:redraw!<CR>
map <Leader>l :call RunLastSpec()<CR>:redraw!<CR>
map <Leader>* :call RunAllSpecs()<CR>:redraw!<CR>

let g:rspec_command = ":silent !tmux send-keys -t spec 'clear' C-m 'rspec {spec}' C-m"
let g:rspec_runner = "os_x_iterm2"

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"scrolling speed
set ttyfast
"set ttyscroll=3  neovim doesnt like this
let g:coc_global_extensions = ['coc-tsserver', 'coc-git', 'coc-css', 'coc-html']
set lazyredraw

set backspace=2
"no backups since we are always in git (almost)
set nobackup
set nowritebackup
set noswapfile

"ruby neovim settings
 let g:ruby_host_prog = '~/.rbenv/versions/2.4.1/bin/neovim-ruby-host'
"javascript vars for vim-javascript
let g:javascript_enable_domhtmlcss = 1

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:deoplete#enable_at_startup = 1

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"style the terminal
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

"Prettier
let g:prettier#exec_cmd_path = "/Users/oleg/Work/acuity/client/prettier.json"

" you can add these colors to your .vimrc to help customizing
"let s:brown = "905532"
"let s:aqua =  "3AFFDB"
"let s:blue = "689FB6"
"let s:darkBlue = "44788E"
"let s:purple = "834F79"
"let s:lightPurple = "834F79"
"let s:red = "AE403F"
"let s:beige = "F5C06F"
"let s:yellow = "F09F17"
"let s:orange = "D4843E"
"let s:darkOrange = "F16529"
"let s:pink = "CB6F6F"
"let s:salmon = "EE6E73"
"let s:green = "8FAA54"
"let s:lightGreen = "31B53E"
"let s:white = "FFFFFF"
"let s:rspec_red = 'FE405F'
"let s:git_orange = 'F54D27'

"let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

"let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

"let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
"let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

