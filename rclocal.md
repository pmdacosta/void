## `/etc/rc.local` 

Sourced in runit stage 2. A shell script which can be used to specify configuration to be done prior to login.
For example you can use `macchanger` to set a random mac address on a network interface

/etc/rc.local
```bash
sudo macchanger -r <interface>
```
