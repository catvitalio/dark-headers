# Dark headers
Set dark window headers on a per-application basis.

![screenshot](./screenshot.png)

In GNOME, you can set a dark theme only for a GTK application using the `GTK_THEME` environment variable. If you do this for applications written in Electron, Qt, and other tools, the app's headerbar will not change to dark. My script fixed this problem.

Just create a configuration file `~/.config/dark-headers.conf` and run the script. In the config, enter WM_CLASS of the apps you need. Example:
```gtk-dark.conf
code
jetbrains
spotify
keeweb
atom
```
# Installation
To install on your computer run `install.sh` as root:
```bash
chmod +x install.sh
sudo ./install.sh
```
For startup, you need to enable the systemd service:
```bash
systemctl --user enable --now dark-headers.service
```
# Uninstallation
To uninstall, use `uninstall.sh`:
```bash
chmod +x uninstall.sh
sudo ./uninstall.sh
```
# Dependencies
`xorg-xprop`

# License
MIT
