## **Setup redshift as a service**

1. **create a service called `/etc/sv/runsvdir-<username>` with the following run script, which should be executable:**

```bash
#!/bin/sh

export USER="<username>"
export HOME="/home/<username>"

groups="$(id -Gn "$USER" | tr ' ' ':')"
svdir="$HOME/service"

exec chpst -u "$USER:$groups" runsvdir "$svdir"
```

make it executable

```bash
chmod u+x /etc/sv/runsvdir-<username>
```

2. **create your `service` dir**

```bash
mkdir ~/service
```

add `export SVDIR=~/service` to your `.bashrc` so you can target your services with `sv`

```bash
$ sv status redshift
run: redshift: (pid 21080) 801s
```

3. **create your redshift config**
```bash
vim ~/.config/redshift.conf
```
`redshift.conf`
```bash
[redshift]
temp-day=5500
temp-night=3000
location-provider=manual
[manual]
lat=<your-lat>
lon=<your-lon>
```

4. **create the redshift service and make it executable**

```bash
mkdir ~/service/redshift
vim ~/service/redshift/run
```
`~/service/redshift/run`
```bash
#!/bin/sh
redshift -c /home/pedro/.config/redshift.conf
export DISPLAY=:0; redshift
```
```bash
chmod u+x ~/service/redshift/run
```

---

## references
  
  * Void Manual: [https://docs.voidlinux.org/config/services/user-services.html](https://docs.voidlinux.org/config/services/user-services.html)
  * r/voidlinux: [How to run redshift as a service](https://old.reddit.com/r/voidlinux/comments/al97ql/how_to_run_redshift_as_a_service/)


