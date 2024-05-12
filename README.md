# keepass - install auto-type on Linux (Wayland)
Script for configuring Keepass auto-type on Linux.

Implements commands as per [Keepass docs](https://keepass.info/help/kb/autotype_wayland.html), which are a bit annoying to do manually:

- Installs prereqs (note this assumes compilers already available, but pulls necessary libs + Mono)
- Sets permissions/groups
- Downloads KPUinput plugin
- Builds plugin
- Copies files to Keepass dir (NOTE this is hard-coded to `/usr/lib/keepass2/`.)

Tested on Ubuntu 22 LTS (Wayland). 

Not sure if you're running Wayland? Try `echo $XDG_SESSION_TYPE`.
