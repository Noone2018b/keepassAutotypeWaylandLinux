# keepass - install auto-type on Linux (Wayland)
Script for configuring Keepass auto-type on Linux.

## Outline

Implements commands as per [Keepass docs](https://keepass.info/help/kb/autotype_wayland.html), which are a bit annoying to do manually:

- Installs prereqs (note this assumes compilers already available, but pulls necessary libs + Mono)
- Sets permissions/groups
- Downloads KPUinput plugin
- Builds plugin
- Copies files to Keepass dir (NOTE this is hard-coded to `/usr/lib/keepass2/`.)

## Run

Just run it... e.g. `./keepass2_auto-type_install.sh` from your download dir.

Tested on Ubuntu 22 LTS (Wayland, kernel 6.5.0-28-generic). Note Keepass will need restarting after install, but a full system reboot wasn't necessary.

Not sure if you're running Wayland? Try `echo $XDG_SESSION_TYPE`.
