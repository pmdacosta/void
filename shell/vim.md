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

- `[(` → go to previous (
- `])` → go to next (
- `[{` → go to previous {
- `]}` → go to next }

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


## References

- [Vim Tip - Goto Surrounding Brackets](https://www.youtube.com/watch?v=FuHZAUCsy1I)
- [.vimrc setup](https://vim.fandom.com/wiki/Open_vimrc_file)
