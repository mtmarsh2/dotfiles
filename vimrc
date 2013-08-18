if has("mouse")
	set mouse=a
endif
syntax enable
:set number
:set smartcase
imap ii <C-[>
syntax on
filetype indent plugin on
set nocompatible
filetype on 
set rtp+=~/.vim/bundle/vundle/
map rr <C-W>w
imap <Tab> <c-y>,
set clipboard=unnamed

:set smartcase
