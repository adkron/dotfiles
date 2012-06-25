# Vim (Janus plugins) Cheatsheet
    <Leader> is mapped to ','
    C is Ctrl

## Ack (project find)
    <C-F> - (Control+Shift+F) Find in project
      q - Quit the search view
      <CR> - Load a search result into the active buffer

## Tree Operations
    <Leader>-n - Toggle tree pane
    <Leader>-nf - Find current buffer in the tree
    m - Display tree modification options (add, move, delete, copy) [Displayed when cursor is in tree]

## Window Operations
    <C-w>-direction - Move to the window in the desired direction (up, down, left, right)
    <C-w>= - Adjust viewports to the same size
    :sp - Split the current buffer horizontally
    :vs - Split the current buffer vertically
    <Leader><Leader> - Hide all open windows other than where the cursor appears
    <C-e> - Move the screen up one line without moving the cursor
    <C-y> - Move the screen down one line without moving the cursor

## Buffer exploration
    <Leader>be - List currently open buffers
      <CR> - opens the buffer for editing
    <Leader>bs - Create a horizonal split window, leaving the current buffer visible and showing other
                 open buffers in the split
    <Leader>bv - Create a vertical split window, leaving the current buffer visible and showing other
                 open buffers in the split

## Cucumber
    <C-]>  - Jump to step from feature
    <C-W]> - Split the window horizontally with the corresponding step in the new window

## String toggling (Specky plugin)
    <C-s>' - Toggles between single quote, double quote (and symbol in Ruby)

## Ruby
    <Leader>bl - Toggle a block boundary between {} and do/end

## Rails
    gf  - Moves to file under cursor (if it can be figured out)
    :A  - Change view to alternate file (moves to related spec for a given file, or to file from related spec)
    :AS - Open alternate file in a horizontal split window
    :AV - Open alternate file in a vertical split window
    :R  - Change to related file (examples below)
      Current file            Alternate file      Related file ~
      model                   unit test           schema definition
      controller (in method)  functional test     template (view)
      template (view)         functional test     controller (jump to method)
      migration               previous migration  next migration
      config/database.yml     config/routes.rb    config/environments/*.rb
    :RS - Open related file in a horizontal split window
    :RV - Open related file in a vertical split window

## Ruby Refactoring
    <leader>rap  - Add Parameter to function
    <leader>rcpc - Convert Post Conditional
    <leader>rel  - Extract to Let (RSpec/MiniSpec)
    <leader>rec  - Extract Constant
    <leader>relv - Extract Local Variable
    <leader>rit  - Inline Temporary Variable
    <leader>rrlv - Rename Local Variable
    <leader>rriv - Rename Instance Variable
    <leader>rem  - Extract Method
View example refactoring usages [here](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/)

## RSpec
    <C-s>s - Run current RSpec buffer and display result
      - 'e' and 'r' to move back and forth on each failed assertion
      - 'E' to jump details for it
      - '<C-e>' to "forget" the currently selected failed assertion
      - 'q' to close the spec output buffer

## Git (Fugitive plugin)
    :Gstatus - Display the git status for the current workspace
      <C-N> next file
      <C-P> previous file
      <CR>  |:Gedit|
      -     |:Git| add
      -     |:Git| reset (staged files)
      C     |:Gcommit|
      cA    |Gcommit| --amend --reuse-message=HEAD
      ca    |Gcommit| --amend
      D     |:Gdiff|
      ds    |:Gsdiff|
      dp    |:Git!| diff (p for patch; use :Gw to apply)
      dp    |:Git| add --intent-to-add (untracked files)
      dv    |:Gvdiff|
      O     |:Gtabedit|
      o     |:Gsplit|
      p     |:Git| add --patch
      p     |:Git| reset --patch (staged files)
      q     close status
      R     reload status
    :Gblame - Show git blame for the current buffer
      q     close blame and return to blamed window
      gq    q, then |:Gedit| to return to work tree version
      i     q, then open commit
      o     open commit in horizontal split
      O     open commit in new tab
      <CR>  reblame at commit
      ~     reblame at [count]th first grandparent
      P     reblame at [count]th parent (like HEAD^[count])
    :Glog - Show the git log for the current buffer
      [q    (:cprev) jump to previous quickfix item
      ]q	(:cnext) jump to next quickfix item
      [Q	(:cfirst) jump to first quickfix item
      ]Q	(:clast) jump to last quickfix item

## Bundler
    :Bopen[!] [gem]    - With no argument, edits the Gemfile.  Otherwise, effectively does a `bundle open` of a
                         gem inside of Vim, including an |:lcd| to the gem's root directory.
    :Bsplit[!] [gem]   - Like |:Bopen|, but horizontally split.
    :Bvsplit[!] [gem]  - Like |:Bopen|, but vertically split.
    :Btabedit[!] [gem] - Like |:Bopen|, but use a new tab.

## CTags
    <F8> - Toggle open/close tag list window for the current buffer

## Finding a file (Command-T)
    <Leader>-T  Prompt to search for a file
    <CR>        open the selected file
    <C-CR>      open the selected file in a new split window
    <C-s>       open the selected file in a new split window
    <C-v>       open the selected file in a new vertical split window
    <C-t>       open the selected file in a new tab
