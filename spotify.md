## **1. Install the build tools**

Void uses `xbps-src` to compile packages from source.

```bash
sudo xbps-install -S git base-devel
```

---

## **2. Clone the void-packages repository**

This contains all the build recipes for Void’s packages, including community ones.

```bash
git clone https://github.com/void-linux/void-packages.git
cd void-packages
```

---

## **3. Enable restricted packages**

Spotify is in the `nonfree` repo, so you need to allow it.

```bash
echo XBPS_ALLOW_RESTRICTED=yes >> etc/conf
```

---

## **4. Bootstrap the build system**

This sets up `xbps-src`.

```bash
./xbps-src binary-bootstrap
```

---

## **5. Build Spotify**

Now you can compile it.

```bash
./xbps-src pkg spotify
```

This will take a while — it downloads dependencies, applies patches, and builds the app.

---

## **6. Install the package**

Once the build finishes, the compiled `.xbps` package will be in the `hostdir/binpkgs` folder.

```bash
sudo xbps-install --repository=hostdir/binpkgs/nonfree spotify
```

---

## **7. Run Spotify**

You should now be able to start Spotify from your application menu or via:

```bash
spotify
```

---

**💡 Tips**

* Keep your `void-packages` repo updated before rebuilding in the future:

  ```bash
  git pull
  ```
* If you don’t want to compile, you can run **Spotify via Flatpak** (simpler but slightly heavier).
