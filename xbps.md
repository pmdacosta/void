## Xbps commands

Find which packages require the `libFLAC` shared lib.
- `-p shlib-requires` - only match this package property `shlib-requires`
- `-s libFLAC` - search `libFLAC`

```bash
xbps-query -p shlib-requires -s libFLAC
```
