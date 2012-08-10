"
" Commands
"

" View differences between the current buffer and the original file.
" (Based on code from $VIMRUNTIME/vimrc_example.vim.)
"
if !exists(":DiffOrig")
    command DiffOrig vertical new | set buftype=nofile | read # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

" Close current buffer without closing window.
"
command! Bd enew<Bar>bd #

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Write all files when focus lost (like TextMate does it)
au FocusLost *  :silent wa

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Write all files when focus lost (like TextMate does it)
au FocusLost *  :silent wa

" Mapping for toggling between block wrappers
let g:blockle_mapping = '<Leader>bl'

" Toggle open the tags list window
nnoremap <silent> <F8> :TlistToggle<CR>

" Map .. to move up the tree when browsing into Git trees
autocmd User fugitive if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' | nnoremap <buffer> .. :edit %:h<CR> | endif

" delete the fugitive buffer when you leave it
autocmd BufReadPost fugitive://* set bufhidden=delete
" Map .. to move up the tree when browsing into Git trees
autocmd User fugitive if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' | nnoremap <buffer> .. :edit %:h<CR> | endif

" delete the fugitive buffer when you leave it
autocmd BufReadPost fugitive://* set bufhidden=delete

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
     \| exe "normal g'\"" | endif
endif

cabbrev Q quit
cabbrev W write
cabbrev Wq wq
cabbrev WQ wq
