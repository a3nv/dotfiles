syntax on
set relativenumber

call plug#begin('~/.vim/plugged')

" Code completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Java-completion
Plug 'artur-shaik/vim-javacomplete2' 

" Asynchronous Linting Engine (ALE)
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" # Common commands

set backspace=indent,eol,start
" -----------------------------------------------------------

" # Deoplete setup
" Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 " Less spam let g:deoplete#auto_complete_start_length = 2
" Use smartcase
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
\ 'sources': {'java': ['javacomplete2']}, 
\ 'smart_case': v:true
\ })
" -----------------------------------------------------------

" # vim-javacomplete2. Java complete 2 setup
" Java completion
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java JCEnable
" -----------------------------------------------------------

" # Asynchronous Linting Engine (ALE) setup
" Shorten error/warning flags
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
" let g:ale_sign_error = '✘✘'
" let g:ale_sign_warning = '⚠⚠'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
" let g:ale_open_list = 0
" let g:ale_loclist = 0


" Setup compilers for languages

" let g:ale_linters = {
"       \  'cs':['syntax', 'semantic', 'issues'],
"       \  'python': ['pylint'],
"       \  'java': ['javac']
"       \ }
" -----------------------------------------------------------