"if mouse
"  set mouse=a
"endif

" highlighting
syntax on
hi Constant guifg=DarkRed
hi link None Constant

" encoding
set encoding=utf-8

" environment
set showmode
set ruler
set number
set nowrap
set scrolloff=5

" search
set hlsearch
set incsearch
set ignorecase

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

" more typing
set textwidth=80
set list
set listchars=tab:>-,trail:-
set showmatch
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
