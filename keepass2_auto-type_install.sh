# Keepass 2 Auto-type on Ubuntu 22 LTS (Wayland)
# Following https://keepass.info/help/kb/autotype_wayland.html
# 11/05/24
#
# Github: https://github.com/Noone2018b/keepassAutotypeWaylandLinux
#

echo Building KPUinput plugin for Keepass

# *** Libs
# May also need g++ / gcc-c++, libstdc++, linux-headers-ARCHITECTURE if not already installed.
# For dev system only needed additional libs.
sudo apt install libsystemd-dev libxkbcommon-dev mono-complete

# *** PERMS:

sudo groupadd uinputg

sudo usermod -a -G uinputg $USER

echo "KERNEL==\"uinput\", GROUP=\"uinputg\", MODE=\"0660\", OPTIONS+=\"static_node=uinput\"" | sudo tee /etc/udev/rules.d/89-uinput-u.rules > /dev/null


# *** Get plugin

wget https://keepass.info/extensions/v2/kpuinput/KPUInput-1.4.zip && unzip KPUInput-1.4.zip


# *** Build

chmod +x KPUInputN.sh; ./KPUInputN.sh

# TODO: CHECK FILE BUILT OK
# SHOULD HAVE KPUInputN.so

# *** Copy 
sudo cp KPUInput* /usr/lib/keepass2/
sudo cp -f KPUInputN.so /usr/lib/KPUInputN.so

echo Build complete, on restart Keepass should have autotype enabled...

