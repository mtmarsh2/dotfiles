if has("mouse")
	set mouse=a
endif
:set number
:set smartcase
imap ii <C-[>
syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

map rr <C-W>w


Bundle 'mtmarsh2/vundle'
Bundle 'wayfare/vim-dotfiles'

execute pathogen#infect()
filetype plugin indent on

imap <Tab> <c-y>,
