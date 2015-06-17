set tabstop=4           " Set the visible width of tabs.
set softtabstop=4       " Edit as if tabs are 4 characters wide.
set shiftwidth=4        " Number of spaces to use for indent and unindent.

nmap <F4> :w<CR> :Mvn test
nmap <S-F4> :4sp target/surefire-reports<CR>
nmap <S-F3> :JavaImport
