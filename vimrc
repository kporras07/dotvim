execute pathogen#infect()
Helptags
syntax on
filetype plugin indent on

if ! has("gui_running") 
    set t_Co=256
endif 

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has("gui_gtk2")
    set guifont=M+\ 2m\ Bold\ 12
    set guioptions-=T
    set guioptions-=m
elseif has("gui_win32")
    set guifont=Consolas:h12
endif

" feel free to choose :set background=light for a different style 
set background=dark 
colorscheme solarized

set sw=4 ts=4 et

if &diff
    syntax off
endif

map <Leader>n <plug>NERDTreeTabsToggle<CR>

"let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:syntastic_always_populate_loc_list = 1
let delimitMate_expand_cr = 1
"let delimitMate_expand_space = 1
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|local|client/bower_components)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'
let g:syntastic_typescript_tsc_args = '-t ES5 -m amd'
let g:syntastic_javascript_checkers = ['eslint']
let g:xmledit_enable_html = 1
"let g:gitgutter_sign_column_always = 1

au BufRead,BufNewFile *.twig set syntax=htmljinja
let g:syntastic_php_phpcs_args="--standard=Drupal --extensions=php,module,inc,install,test,profile,theme"
