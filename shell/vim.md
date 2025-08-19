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
- `:b n` → go to buffer *n*
- `:split filename` → horizontal split
- `:vsplit filename` → vertical split
- `Ctrl-w w` → switch windows
- `Ctrl-w q` → close window
