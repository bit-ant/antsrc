" show line munbers
set number

" set line numbers to cyan to avoid emetiko yellow
:highlight LineNr ctermfg=cyan

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Show whitespace errors
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" highlight current cursor line
:set cursorline

" change the highlight colors
:hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white
:hi CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white
" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=black ctermfg=None
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=darkblue ctermfg=white

:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" line marker
:set colorcolumn=150
" change color column color
:hi ColorColumn ctermbg=darkblue

" highlight search result
:set hlsearch
