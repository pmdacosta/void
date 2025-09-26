# Vim Cheatsheet

## Modes
- `i` → insert mode (type text)
- `Esc` → normal mode
- `v` → visual mode (select text)
- `:` → command-line mode

## File
- `:e filename` → open file
- `:w` → save
- `:q` → quit
- `:wq` → save and quit
- `:q!` → quit without saving
- `:x` → save and quit (like `:wq`)
- `:wa` → write all changes 

## Movement
- `h` → left
- `l` → right
- `j` → down
- `k` → up
- `w` → next word
- `b` → previous word
- `0` → start of line
- `^` → first non-blank in line
- `$` → end of line
- `gg` → top of file
- `G` → bottom of file
- `:n` → go to line *n*

- `Ctrl-f` → page forward
- `Ctrl-b` → page backward
- `Ctrl-d` → page down (half page)
- `Ctrl-u` → page up (half page)

- `H` → move cursor to top (High)
- `M` → move cursor to middle (Middle)
- `L` → move cursor to bottom (Low)
  
- `[(` → go to previous (
- `])` → go to next (
- `[{` → go to previous {
- `]}` → go to next }

- see more [Go to definition using g](https://vim.fandom.com/wiki/Go_to_definition_using_g)
- `gd` will take you to the local declaration.
- `gD` will take you to the global declaration.
- `g*` search for the word under the cursor (like *, but g* on 'rain' will find words like 'rainbow').
- `g#` same as g* but in backward direction.
- `gg` goes to the first line in the buffer (or provide a count before the command for a specific line).
- `G` goes to the last line (or provide a count before the command for a specific line).
- `gf` will go to the file under the cursor
- `g]` and other commands will jump to a tag definition (a tag can be a function or variable name, or more).
- `Ctrl + ]` same as `g]` but does not prompt

## Editing
- `x` → delete character
- `dd` → delete line
- `yy` → yank (copy) line
- `p` → paste
- `u` → undo
- `Ctrl-r` → redo
- `>>` → indent line
- `<<` → unindent line

## Search & Replace
- `/text` → search forward
- `?text` → search backward
- `n` → repeat search
- `:%s/old/new/g` → replace all

### Better Search & Replace

- [https://stackoverflow.com/a/597932](https://stackoverflow.com/a/597932)
- [https://stackoverflow.com/a/49853906](https://stackoverflow.com/a/49853906)

## Buffers / Windows
- `:ls` → list buffers
- `:b nanme` → go to buffer *name*
- `:split filename` → horizontal split
- `Ctrl-w s` → horizontal split
- `:vsplit filename` → vertical split
- `Ctrl-w v` → vertical split
- `Ctrl-w w` → switch windows
- `Ctrl-w q` → close window

## Help
- `:help` → Go to help manual
- `:help <command>` → Go to section <commnad> of the help manual

# `:g` Commands

## Basics
- `:g/pattern/cmd` → run `cmd` on every line matching `pattern`
- `:g!/pattern/cmd` or `:v/pattern/cmd` → run `cmd` on lines *not* matching

## Common Uses
- `:g/pattern/d` → delete all lines matching
- `:g!/pattern/d` → delete all lines not matching
- `:g/pattern/y` → yank (copy) all matching lines
- `:g/pattern/m$` → move matching lines to end of file
- `:g/pattern/t$` → copy matching lines to end of file

## Printing
- `:g/pattern/p` → print matching lines
- `:g!/pattern/p` → print non-matching lines

## Chaining with Substitution
- `:g/pattern/s/foo/bar/g` → in matching lines, substitute `foo` → `bar`

## Example Tricks
- `:g/^$/d` → delete all blank lines
- `:v/./d` → keep only blank lines
- `:g/ERROR/w errors.txt` → write all lines with `ERROR` to file

- `Ctrl-a` → increase number

## Nerd Tree

- [Creating a new file or directory in Vim using NERDTree](https://sookocheff.com/post/vim/creating-a-new-file-or-directoryin-vim-using-nerdtree/)
- [NERDTree Cheat sheet](https://cheatography.com/stepk/cheat-sheets/vim-nerdtree/)
- `m` : bring up NERDTree FileSystem menu


## References

- [Vim Tip - Goto Surrounding Brackets](https://www.youtube.com/watch?v=FuHZAUCsy1I)
- [.vimrc setup](https://vim.fandom.com/wiki/Open_vimrc_file)
