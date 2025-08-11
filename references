Here’s both answers rewritten in **GitHub-friendly Markdown** formatting:

---

````markdown
# Void Linux Resources & Documentation

## 📚 Official Documentation
- **Void Handbook** – main reference for installation, configuration, package management, etc.  
  [https://docs.voidlinux.org](https://docs.voidlinux.org)
- **Man pages** – for `xbps` (package manager) and other Void tools:  
  - `man xbps-install`  
  - `man xbps-query`  
  - `man xbps-remove`

## 💬 Community Support
- **Void Linux Forum** – official user discussion board:  
  [https://forum.voidlinux.org](https://forum.voidlinux.org)
- **IRC** – `#voidlinux` on Libera Chat (use [https://web.libera.chat](https://web.libera.chat) without installing an IRC client)
- **Reddit** – unofficial but active:  
  [https://reddit.com/r/voidlinux](https://reddit.com/r/voidlinux)

## 💻 Development & Issues
- **Void Linux GitHub** – issue tracking, package requests, PRs:  
  [https://github.com/void-linux/void-packages](https://github.com/void-linux/void-packages)

## 📜 Wiki & Guides (Community-created)
- **Arch Wiki** – many guides work on Void with minor adjustments (swap `pacman` commands for `xbps` equivalents):  
  [https://wiki.archlinux.org](https://wiki.archlinux.org)
- **Unofficial tutorials** – search:  
  - `"Void Linux site:dev.to"`  
  - `"Void Linux site:medium.com"`

---

# Void Linux Survival Cheat Sheet

## 📦 Package Management (xbps)
```bash
# Update repo list & system
sudo xbps-install -Syu

# Install package
sudo xbps-install packagename

# Remove package
sudo xbps-remove packagename

# Search packages
xbps-query -Rs keyword

# List installed packages
xbps-query -l
````

## 🛠 Service Management (runit)

```bash
# Enable service at boot
sudo ln -s /etc/sv/servicename /var/service

# Disable service
sudo rm /var/service/servicename

# Start/Stop immediately
sudo sv up servicename
sudo sv down servicename

# Check status
sudo sv status servicename
```

## 💻 System Basics

```bash
# Check system info
uname -a

# Disk usage
df -h

# Memory usage
free -h

# Find a command's location
which command
```

## 🌐 Networking

```bash
# Check IP
ip a

# Test connection
ping -c 4 voidlinux.org

# Restart network service
sudo sv restart dhcpcd
```

## 📚 Helpful Resources

* Official docs: [https://docs.voidlinux.org](https://docs.voidlinux.org)
* Forum: [https://forum.voidlinux.org](https://forum.voidlinux.org)
* Arch Wiki (for general Linux tips): [https://wiki.archlinux.org](https://wiki.archlinux.org)

```

---

Do you want me to **merge these into a single README.md** layout so it’s already styled and ready for a GitHub repo? That way it would be plug-and-play.
```
