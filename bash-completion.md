## **Fix: Enable bash-completion for sudo**

1. **Install bash-completion package**

   ```bash
   sudo xbps-install bash-completion
   ```

2. **Enable it in your shell**
   Add this to your `~/.bashrc` (if not already present):

   ```bash
   if [ -f /usr/share/bash-completion/bash_completion ]; then
       . /usr/share/bash-completion/bash_completion
   fi
   ```

3. **Enable sudo completion**
   The bash-completion package includes a helper script for `sudo`.
   Add this **after** the previous block in `~/.bashrc`:

   ```bash
   complete -cf sudo
   ```

4. **Reload your shell**

   ```bash
   source ~/.bashrc
   ```

---

**Result:**
Now if you type:

```bash
sudo xb[Tab]
```

…it will autocomplete to `xbps-install` or other matching commands.

---

If you want, I can also show you a **one-liner fix** that makes this work instantly for *all users* on your Void system without editing `~/.bashrc` individually.
