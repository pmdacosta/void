## Enable logging

install the `socklog-void` package

```bash
sudo xbps-install socklog-void
```

Enable `nanologd` and `socklog-unix` services.

```bash
sudo ln -s /etc/sv/socklog-unix/ /var/service
sudo ln -s /etc/sv/nanoklogd/ /var/service
```

Add your user to the `socklog` group to be able to read logs without `root`

```bash
usermod -aG $USER socklog
```

Check logs using `svlogtail`, for example:

```bash
svlogtail errors
```

List all logging level options

```bash
ls /var/log/socklog
```
---

## Reference

  * Void Manual: [Logging](https://docs.voidlinux.org/config/services/logging.html)
