" Krish Subramaniam's .vimrc

" enable Pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" vim addons to install for Pathogen
" see -- http://github.com/bronson/vim-update-bundles
" also see vim-scripts.org
" BUNDLE: git://github.com/vim-scripts/L9.git
" BUNDLE: git://github.com/vim-scripts/FuzzyFinder.git
" BUNDLE: git://github.com/vim-scripts/The-NERD-Commenter.git
" BUNDLE: git://github.com/vim-scripts/Align.git
" BUNDLE: git://github.com/vim-scripts/molokai.git
" BUNDLE: git://github.com/vim-scripts/vividchalk.vim.git
" BUNDLE: git://github.com/vim-scripts/desert256.vim.git


filetype plugin indent on
set nocompatible
set mouse=a
syntax enable " syntax highlighting
set bs=indent,eol,start
set showmatch

" Indenting
" ********************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)
set cindent
set shiftwidth=2
set expandtab

" Windows
" *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Searching
" *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Colors
" **********************************************************************
"set t_Co=256 " 256 colors
" color scheme
color desert


" line number and width
set number
set nuw=6
set ruler " show the cursor position in the bottom right corner
set cursorline   "highlight current line
set showcmd  " display incomplete commands
set digraph " enable digraphs, needed for special characters
set hidden " enable hidden files
set magic " enable advanced regular expression in searches

" Abbreviations
" "
iab _DATE <C-R>=strftime("%A, %B %e %Y %I:%M:%S %p %Z")<CR>


" Evil spaces and tabs are highlighted!
"highlight LeadingTab ctermbg=blue guibg=blue
"highlight LeadingSpace ctermbg=darkgreen guibg=darkgreen
highlight EvilSpace ctermbg=darkred guibg=darkred
"au Syntax * syn match LeadingTab /^\t\+/
"au Syntax * syn match LeadingSpace /^\ \+/
"au Syntax * syn match EvilSpace /\(^\t*\)\@<!\t\+/ " tabs not preceeded by tabs
"au Syntax * syn match EvilSpace /[ \t]\+$/ " trailing space

" Command completion just like shell
set wildmode=list:longest

" set visual bell ( disables audio bell )
set visualbell

" set leader key ,
let mapleader = "," 

" FuzzyFinder settings
let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'FavFile':{}, 'Tag':{}, 'TaggedFile':{}}
let g:FuzzyFinderOptions.Base.ignore_case = 1
let g:FuzzyFinderOptions.Base.lasting_cache = 1
let g:FuzzyFinderOptions.MruFile.max_item = 500 
let g:FuzzyFinderOptions.MruCmd.max_item = 500 
nmap <leader>f :FufFile<CR>
nmap <leader>b :FufBuffer<CR>
nmap <leader>c :FufMruCmd<CR>
nmap <leader>F :FufMruFile<CR>
nmap <leader>t :FufTag<CR>
nmap <leader>n :bn<CR>


"keymappings
" tab to switch between windows
map <F6> <C-W>w
map <F2> :NERDTreeToggle<CR>


"Taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F3> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 

"disable arrow keys and help
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
