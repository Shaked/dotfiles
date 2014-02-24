" Vundle conf
set nocompatible              " be iMproved, required
filetype off    " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" packages
" themes
Bundle 'flazz/vim-colorschemes'
" lang support
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
" language tools
Bundle 'scrooloose/syntastic'
" text editing tools
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround' 
Bundle 'MarcWeber/ultisnips'
Bundle 'honza/vim-snippets'
" version control
Bundle 'tpope/vim-fugitive'
Bundle 'mhinz/vim-signify'
" navigation, search, GUI
Bundle 'bling/vim-airline'
Bundle 'ZoomWin'
" version control
Bundle 'tpope/vim-fugitive'
Bundle 'mhinz/vim-signify'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'mattboehm/vim-accordion'
" Session Management
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'embear/vim-localvimrc'

" packages settings
" markdown nofolding
let g:vim_markdown_folding_disabled=1

" golang settings 
set rtp+=$GOROOT/misc/vim 

" Basic settings
filetype plugin indent on
syntax on
set tabstop=2
set shiftround
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set encoding=utf-8
" Visual Aids
set guicursor=n-v-c:hor5-Cursor
set cursorline
set list
set list listchars="tab:\»\ ,trail:·"
set relativenumber
set ruler
" set spell spelllang=en_us

" keyboard mapping
inoremap jk <ESC>
let mapleader = ","

 " Spelling 
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!

 " Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Filetype settings
autocmd BufNewFile,BufRead,BufWritePost *.md set filetype=markdown
autocmd BufNewFile,BufRead,BufWritePost *.swig set filetype=django
autocmd FileType coffee set commentstring=#%s

set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Plugin config
" -------------
let NERDTreeBookmarksFile = $HOME . '/.vim_nerdtree_bookmarks'
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=50
"let coffee_make_options = '-o /tmp/'
" let g:airline_theme='spacedust'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_powerline_fonts = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_extensions = ['tag']
let g:ctrlp_lazy_update = 150
let g:ctrlp_use_caching = 1
let g:ctrlp_map = '<leader>p'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
"let g:ctrlp_regexp = 1
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard', 'find %s -type f']
let g:fugitive_summary_format = '%h - %d %s (%cr by %an)'
let g:session_autosave = 'yes'
" let g:SuperTabDefaultCompletionType = "<c-n>"
let g:syntastic_check_on_open=1
" let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_html_checkers=[]
let g:syntastic_php_checkers=['php']
let g:syntastic_scss_checkers=[]
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
