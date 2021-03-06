"
" Key Mappings
"

" Backspace in Visual mode deletes selection.
"
vnoremap <BS> d

" Yank to the end of the line with Y
noremap Y y$

" Control+Z is Undo, in Normal and Insert mode.
"
noremap  <C-Z>  u
inoremap <C-Z>  <C-O>u

" F2 inserts the date and time at the cursor.
"
inoremap <F2>   <C-R>=strftime("%c")<CR>
nmap     <F2>   a<F2><Esc>

inoremap jj     <Esc>

" F7 formats the current/highlighted paragraph.
"
" XXX: Consider changing this to gwap to maintain logical cursor position.
"
nnoremap <F7>   gqap
inoremap <F7>   <C-O>gqap
vnoremap <F7>   gq

" Shift+F7 joins all lines of the current paragraph or highlighted block
" into a single line.
"
nnoremap <S-F7>  vipJ
inoremap <S-F7>  <Esc>vipJi
vnoremap <S-F7>  J

" Tab/Shift+Tab indent/unindent the highlighted block (and maintain the
" highlight after changing the indentation). Works for both Visual and Select
" modes.
"
vmap >    >gv
vmap <  <gv

" Draw lines of dashes or equal signs below us based on the length of the current line
"
"   yy      Yank whole line
"   p       Put line below current line
"   ^       Move to beginning of line
"   v$      Visually highlight to end of line
"   r-      Replace highlighted portion with dashes / equal signs
"   j       Move down one line
"   a       Return to Insert mode
"
" XXX: Convert this to a function and make the symbol a parameter.
" XXX: Consider making abbreviations/mappings for ---<CR> and ===<CR>
"
inoremap <C-U>- <Esc>yyp^v$r-ja
inoremap <C-U>= <Esc>yyp^v$r=ja

" Control+Hyphen (yes, I know it says underscore) repeats the character above
" the cursor.
"
inoremap <C-_>  <C-Y>

" Center the display line after searches. (This makes it *much* easier to see
" the matched line.)
"
" More info: http://www.vim.org/tips/tip.php?tip_id=528
"
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#zz

" Make page-forward and page-backward work in insert mode.
"
imap <C-F>  <C-O><C-F>
imap <C-B>  <C-O><C-B>

" Q formats the current/highlighted paragraph.
nnoremap Q  gwap
xnoremap Q  gw
vnoremap Q  gw

" Make page-forward and page-backward work in insert mode.
"
inoremap <C-F>  <C-O><C-F>
inoremap <C-B>  <C-O><C-B>

" Turn On/Off NERDTree
map <leader>n :NERDTreeToggle<CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-k> [e==
nmap <C-j> ]e==
" Bubble multiple lines
vmap <C-k> [egv==
vmap <C-j> ]egv==

" Movement up and down when lines are wrapped
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Gundo configuration
nmap <F5> :GundoToggle<CR>
imap <F5> <ESC>:GundoToggle<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

map <Leader>nf :NERDTreeFind<CR>

inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

let g:SuperTabDefaultCompletionType = "context"

let g:user_zen_expandabbr_key = '<c-z>'

" Mapping for toggling between block wrappers
let g:blockle_mapping = '<Leader>bl'

" Toggle open the tags list window
nnoremap <silent> <F8> :TlistToggle<CR>

" Ctrl-Shift-F for Ag
  map <C-F> :Ag!<space>""<Left>

" Alt-/ to toggle comments
  map <A-/> <plug>NERDCommenterToggle<CR>
  imap <A-/> <Esc><plug>NERDCommenterToggle<CR>i
  map /  <plug>NERDCommenterToggle<CR>
  imap /  <Esc><plug>NERDCommenterToggle<CR>i

" Git Gutter Commands
let g:gitgutter_highlight_lines = 1
let g:gitgutter_enabled = 0
nmap <leader>gg :GitGutterToggle<CR>

" Fugitive
nmap <leader>gs :Gstatus<CR>
nmap <F3> :Git fetch<CR>:Git merge --no-ff origin/master<CR>
nmap <F4> :Git fetch<CR>:Git rebase --no-ff origin/master<CR>
nmap <leader>gf :Git fetch<CR>
nmap <leader>gr :Gread<CR>:w<CR>
nmap <leader>gp :Git push origin HEAD<CR>
nmap <leader>gh :Gblame<CR>
nmap <leader>grh :Git reset --hard<CR>

vmap <leader>gb :Gbrowse<CR>
inoremap <leader>gb <ESC>:Gbrowse<CR>

" Ruby helpers
let test#strategy = 'dispatch'
nmap <leader>rs :w<CR>:TestFile<CR>
nmap <leader>rf :w<CR>:TestNearest<CR>
nmap <leader>rl :w<CR>:TestLast<CR>
nmap <leader>rv :w<CR>:TestVisit<CR>

" spell check
nmap <leader>sc :setlocal spell! spelllang=en_us<CR>

" quick save
nmap <leader>s :w<CR>
inoremap <leader>s <ESC>:w<CR>

" edit vim configs
nmap <leader><leader>c :vsp<CR>:e ~/dotfiles/vim.symlink/vimrc.symlink<CR>
nmap <leader>ab :vsp<CR>:e ~/dotfiles/vim.symlink/abbreviations.vim<CR>
nmap <leader>km :vsp<CR>:e ~/dotfiles/vim.symlink/keymaps.vim<CR>
nmap <leader>ts :vsp<CR>:e ~/toolsharp.txt<CR>
nmap <leader>g :!gist %<CR>
nmap <leader>pg :!gist --private %<CR>

" view output
nmap <leader>vo <ESC>:!<CR>

nmap <leader><S-s> :Sscratch<CR>Go
inoremap <leader><S-s> <ESC>:Sscratch<CR>Go

" print buffer
nmap <leader>p :hardcopy<CR>
inoremap <leader>p :hardcopy<CR>a
vnoremap <leader>p :hardcopy<CR>
nmap <leader><leader><leader><leader><leader>c :! echo "comma comma comma comma comma chameleon"<CR>

" Dash
nmap <silent> <leader>d <Plug>DashSearch

" xmlformat
nmap <leader>xf :%!xmllint --format -<CR>


nmap <leader>- :sp<CR>
inoremap <leader>- <ESC>:sp<CR>
nmap <leader>\| :vsp<CR>
inoremap <leader>\| <ESC>:vsp<CR>
