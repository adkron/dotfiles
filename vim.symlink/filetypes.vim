" Filetype settings - needed when the original plugin filetype settings aren't
" being honored

function! s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function! s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

au BufNewFile,BufRead *.feature set filetype=cucumber
au BufNewFile,BufRead *.scss set filetype=scss
au BufNewFile,BufRead *.eco set filetype=eco
au BufNewFile,BufRead *.rabl set filetype=ruby
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.ru set filetype=ruby

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

