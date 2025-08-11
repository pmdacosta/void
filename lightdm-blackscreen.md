On Void Linux with XFCE4, the **black screen after closing/reopening the laptop lid** usually comes from one of these:

1. **LightDM not handling suspend resume properly**
2. **xfce4-power-manager** conflicting with system suspend settings
3. **Graphics driver not restoring the display** after resume

---

## **Step 1 – Check XFCE Power Settings**

* Open **Settings → Power Manager → General**
* Make sure:

  * "When laptop lid is closed" is set to **Suspend** or **Do nothing** (try changing to "Do nothing" for testing)
  * On the "Display" tab, disable **"Blank after X minutes"** for troubleshooting
* Apply and restart XFCE (`xfce4-session-logout` → log out and back in)

---

## **Step 2 – Check logind config**

Void uses **elogind** for power events.
Edit:

```bash
sudo nano /etc/elogind/logind.conf
```

Ensure:

```
HandleLidSwitch=suspend
HandleLidSwitchDocked=ignore
```

Then reload:

```bash
sudo loginctl reload
```

---

## **Step 3 – Test resume manually**

Try suspending from the terminal instead of closing the lid:

```bash
sudo zzz
```

* If it resumes fine, the issue is lid detection or power-manager settings
* If it still gives black screen, it’s likely graphics driver related

---

## **Step 4 – Graphics driver resume fix**

For some Intel/AMD cards, you need to enable kernel modeset resume:
Edit:

```bash
sudo nano /etc/modprobe.d/video_resume.conf
```

Add:

```
options i915 enable_psr=0
options amdgpu runpm=0
```

(Only use the one for your GPU — `i915` for Intel, `amdgpu` for AMD)

Then regenerate initramfs:

```bash
sudo dracut --force
```

Reboot and test.

---

## **Step 5 – LightDM config tweak**

Sometimes LightDM fails to wake the session and you need to restart it:

```bash
sudo nano /etc/lightdm/lightdm.conf
```

Find:

```
# display-setup-script=
```

Change to:

```
display-setup-script=/bin/xrandr --auto
```

---

If you get a black screen but your system is still running, you can switch to another TTY (terminal) and try to fix or restart things from there. Here’s how:

---

## Switch to another TTY

Press:

```
Ctrl + Alt + F2
```

(or F3, F4, etc. — any of these will open a text console)

You should see a login prompt. Log in with your username and password.

---

## What you can try from the TTY

### 1. Restart the graphical display manager (LightDM)

```bash
sudo sv restart lightdm
```

*This will restart the login screen, but you’ll lose your current GUI session.*

---

### 2. Restart the XFCE session

If you want to try restarting just the session, you can kill the current X session:
Find the X process:

```bash
pgrep Xorg
```

Then kill it:

```bash
sudo killall Xorg
```

It should restart automatically via LightDM or respawn on login.

---

### 3. Check logs for errors (optional)

```bash
sudo journalctl -b -p err
```

or

```bash
cat /var/log/Xorg.0.log | grep EE
```

---

### 4. If restarting LightDM doesn’t help, reboot safely

```bash
sudo reboot
```

---

If you want, I can guide you on how to create a **resume hook script** or **disable suspend on lid close temporarily** from the TTY so you can avoid the black screen on next lid close.

