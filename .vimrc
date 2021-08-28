"The godly not good vimrc file full of useless sheeeets yet i like it

"Tab completion i
set wildmode=longest,list,full
set wildmenu 


set nocompatible              " be iMproved, required
filetype off                  " required



let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"
syntax on
set wrap
set number
set clipboard=unnamedplus
set encoding=utf-8
set hlsearch
set autoindent
syntax enable
filetype plugin indent on


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'


call plug#end()

let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': ['rust-analyzer'],
\     'filetypes': ['rust'],
\     'project_root_files': ['Cargo.toml']
\   }
\ ]
