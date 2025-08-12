### Set a language map temporarly

```bash
setxkbmap us
```

---

Swap **Caps Lock** and **Escape** with `setxkbmap`.

### **Temporary (until reboot or logout)**

```bash
setxkbmap -option caps:swapescape
```

---

### **Make it permanent for your user if you start X using `startx`**

1. Edit your X keyboard config file:

   ```bash
   mkdir -p ~/.xinitrc.d
   echo "setxkbmap -option caps:swapescape" > ~/.xinitrc.d/keyboard.sh
   chmod +x ~/.xinitrc.d/keyboard.sh
   ```
2. This runs every time X starts (works with XFCE, LXQt, etc., on Void).

---

### **System-wide (for all users)**

Edit `/etc/X11/xorg.conf.d/00-keyboard.conf` (create it if missing):

```bash
Section "InputClass"
    Identifier "keyboard defaults"
    MatchIsKeyboard "on"
    Option "XkbOptions" "caps:swapescape"
EndSection
```

###  **User-only persistent swap (XFCE via LightDM)**

On Void + XFCE, the `~/.xinitrc.d` trick won’t run unless you’re starting X manually with `startx`.
Since you’re probably using **LightDM** or another display manager, XFCE starts without touching `.xinitrc`.

1. Create the **autostart directory** if it doesn’t exist:

   ```bash
   mkdir -p ~/.config/autostart
   ```

2. Create a desktop entry for the swap:

   ```bash
   nano ~/.config/autostart/swap_caps_esc.desktop
   ```

3. Put this inside:

   ```ini
   [Desktop Entry]
   Type=Application
   Exec=setxkbmap -option caps:swapescape
   Hidden=false
   X-GNOME-Autostart-enabled=true
   Name=Swap Caps/Esc
   Comment=Swap Caps Lock and Escape keys
   ```
