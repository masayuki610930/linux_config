set number
set tabstop=2
set expandtab
set history=2000
set autoindent
set formatoptions-=ro
set list
set listchars=tab:≫-,trail:-,eol:^,extends:≫,precedes:≪,nbsp:%
set confirm
set hlsearch
set incsearch
set ignorecase
set wildmenu wildmode=list:longest,full

filetype plugin on
"omni mapping
function InsertTabWrapper()
    if pumvisible()
        return "\<c-n>"
    endif
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k\|<\|/'
        return "\<tab>"
    elseif exists('&omnifunc') && &omnifunc == ''
        return "\<c-n>"
    else
        return "\<c-x>\<c-o>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
