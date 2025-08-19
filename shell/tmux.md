# tmux Cheatsheet

## Starting & Exiting
- `tmux` → start new session
- `tmux new -s name` → start session named *name*
- `tmux attach -t name` → attach to session
- `tmux ls` → list sessions
- `tmux kill-session -t name` → kill session

## Prefix Key
Default prefix: `Ctrl-b`  
(press before most tmux commands)

## Windows
- `Ctrl-b c` → create new window
- `Ctrl-b n` → next window
- `Ctrl-b p` → previous window
- `Ctrl-b w` → list windows
- `Ctrl-b ,` → rename window
- `Ctrl-b &` → close window

## Panes
- `Ctrl-b %` → split vertically
- `Ctrl-b "` → split horizontally
- `Ctrl-b o` → switch to next pane
- `Ctrl-b ;` → toggle between panes
- `Ctrl-b x` → close current pane

## Session Management
- `Ctrl-b d` → detach session (tmux keeps running)
- `tmux attach` → reattach last session
- `tmux ls` → list sessions
- `tmux attach -t name` → attach to session named *name*
- `tmux kill-session -t name` → kill session named *name*

## Misc
- `Ctrl-b ?` → list all key bindings
- `Ctrl-b :` → command prompt

## References

- [Basic tmux Tutorial - Windows, Panes, and Sessions over SSH
](https://www.youtube.com/watch?v=BHhA_ZKjyxo)
