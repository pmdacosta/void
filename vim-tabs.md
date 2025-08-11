In Vim, you can make tabs act as **4 spaces** by setting a few options.

---

## **One-time in current session**

Inside Vim, run:

```vim
:set tabstop=4
:set shiftwidth=4
:set expandtab
```

* `tabstop=4` → a tab character is shown as 4 spaces wide
* `shiftwidth=4` → indentation commands use 4 spaces
* `expandtab` → pressing `Tab` inserts spaces instead of a tab character

---

## **Permanent setting**

Add this to your `~/.vimrc` (create it if it doesn’t exist):

```vim
set tabstop=4
set shiftwidth=4
set expandtab
```

---

## **Extra tip**

If you want to quickly switch between tabs vs. spaces in Vim:

* To turn spaces back into actual tabs:

  ```vim
  :set noexpandtab
  ```
* To convert existing tabs to spaces in the file:

  ```vim
  :retab
  ```
