## powershell ssh-copy-id

```powershell
ssh-keygen.exe
type .ssh\id_ed25519.pub | ssh user@host "cat >> .ssh/authorized_keys"
```
