## Periodic TRIM with cron
Add the following lines to `/etc/cron.weekly/fstrim`:

```bash
#!/bin/sh

fstrim /
```
Finally, make the script executable:

```bash
# chmod u+x /etc/cron.weekly/fstrim
```

---

## References

  * Void Manual: [Periodic TRIM with cron](https://docs.voidlinux.org/config/ssd.html#periodic-trim-with-cron)
