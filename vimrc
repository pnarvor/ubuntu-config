"-----------------------------------------------
" Q. Labourey VIMRC file, feel free to upgrade it
"------------------------------------------------


"--------------------
"--- General settings
"--------------------

set nocompatible
set number				"Line numbers
set showcmd				"Show current cmd
set encoding=utf-8

"-- Indent
set smartindent
set autoindent				"Self explanatory : auto indent
set ruler				"Ruler : see line and column

"-- Mouse gestion
set mouse=a				"Enables to click in the file to put cursor there
set mousemodel=popup			"Use shift to extend selection

"-- Searching the document
set incsearch				"Show match while typing
set ignorecase 				"Ignore casing while searching
set hlsearch
"set noic				"Case-sensitive searching

"-- Split

set splitright
set splitbelow

"-- Fold/Unfold

set foldmethod=indent
set foldlevel=99			" Open all unfolded

"-- Spaces not tabs

set tabstop=4 shiftwidth=4 expandtab


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"-------------------------
"--- Color and ease of use
"-------------------------

set t_Co=256;				"256 colors terminal vim
"set background=light
"colorscheme PaperColor
colorscheme jellybeans
syntax enable				"Enable syntax coloring
"set cursorcolumn			"Highlight current column
set backspace=indent,eol,start		"Allow backspace

syntax on
filetype on
au BufNewFile,BufRead *.gen set filetype=c
au BufNewFile,BufRead *.urdf set filetype=xml
au BufNewFile,BufRead *.launch set filetype=xml
au BufNewFile,BufRead .bash_* set filetype=sh
au BufNewFile,BufRead *.frag set filetype=cpp
au BufNewFile,BufRead *.vert set filetype=cpp
au BufNewFile,BufRead *.glsl set filetype=cpp
au BufNewFile,BufRead *.tpp set filetype=cpp
au BufNewFile,BufRead *.tex set textwidth=80


