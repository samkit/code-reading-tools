" Curator: Samkit Jain

map <F11> :!create_tags<CR>

set tags+=~/code/lib_tags/c++-tags
"set tags+=~/code/lib_tags/boost-tags

" Firefox like mapping
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>

map <A-1> :tabnext 1<CR>
map <A-2> :tabnext 2<CR>
map <A-3> :tabnext 3<CR>
map <A-4> :tabnext 4<CR>
map <A-5> :tabnext 5<CR>
map <A-6> :tabnext 6<CR>
map <A-7> :tabnext 7<CR>
map <A-8> :tabnext 8<CR>
map <A-9> :tabnext 9<CR>
map <A-0> :tablast<CR>

set guitablabel=[%N]-%f
set cursorline

set modeline
set modelines=10
set incsearch
set hlsearch
set smartcase
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set shiftwidth=4
set cscopetag
set splitright
set splitbelow

filetype plugin on

" OmniCppComplete - http://vim.wikia.com/wiki/C%2B%2B_code_completion
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Abbreviations
iabbrev book_modeline # vim: set foldenable foldmethod=indent foldlevel=1 foldcolumn=4 tabstop=4 softtabstop=4 expandtab foldtext=getline(v\:foldstart).'('.v\:foldstart.')':
