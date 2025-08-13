### **1. Install a cron implementation**

The common choice on Void is **`cronie`**:

```bash
sudo xbps-install -S cronie
```

---

### **2. Enable cron in runit**

```bash
sudo ln -s /etc/sv/crond /var/service/
```

Check it’s running:

```bash
sv status crond
```

---

### **3. Now you can edit your crontab**

```bash
crontab -e
```
