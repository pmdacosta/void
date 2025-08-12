### In case you always want to use vim instead of vi, you can just
```bash
sudo ln -s /usr/bin/vim /usr/local/bin/vi
```
(This assumes you have /usr/local/bin before /bin in your PATH.)

Granted, it's a (system-local) hack, but quite simple and effective.

---

* When you run `sudoedit`, the file is **owned by you** while editing, but the process is still your normal user’s Vim, **unless** `sudo` is configured differently.
* If you run `sudo vim file`, it’s Vim as **root**, which will use **root’s** config (`/root/.vimrc`), not yours.

---

### To make `sudoedit` always use **your** Vim config

You don’t need to do anything — `sudoedit` uses your normal user’s `$HOME` and thus your `~/.vimrc`.

---

### To make `sudo vim` also use your Vim config

If you insist on running `sudo vim`, you can force Vim to load your config even as root by adding this to root’s `.vimrc`:

```vim
source /home/yourusername/.vimrc
```

Or for a one-off command:

```bash
sudo vim -u /home/yourusername/.vimrc somefile
```

---

### Cleaner method for root and sudoedit to share the same config

Make a **system-wide** vimrc in `/etc/vimrc`:

```bash
sudo cp ~/.vimrc /etc/vimrc
```

Now **both** root and your user get the same defaults.

---

If you want, I can give you a **minimal shared vimrc setup** for Void so you never get “vanilla Vim” surprises when editing as root. Would you like that?
