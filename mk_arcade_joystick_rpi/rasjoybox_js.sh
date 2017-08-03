#! /bin/bash

"""
rasjoybox_js.sh
Author       : riskpw, member of Raspberrypi Village
Creation Date: Oct 22, 2016
Blog         : http://rasplay.org, http://forums.rasplay.org/, http://wiki.rasplay.org/
Free and open for all to use. But put credit where credit is due.
"""

echo "Ras-JoyBOX GPIO Joystick Auto Installer"

echo "1. RAS Joy-BOX Update"

sudo apt-get update && sudo apt-get upgrade -y

echo "2. Linux dkms and build package install"

sudo apt-get install -y --force-yes dkms cpp-4.7 gcc-4.7 git joystick

echo "3. Linux kernel head install"

sudo apt-get install raspberrypi-kernel-headers

echo "4. RAS-JoyBOX GPIO Controller package Download"

wget https://github.com/digitalLumberjack/mk_arcade_joystick_rpi/releases/download/v0.1.4/mk-arcade-joystick-rpi-0.1.4.deb

echo "5. RAS-JoyBOX GPIO Controller package Install"

sudo dpkg -i mk-arcade-joystick-rpi-0.1.4.deb

echo "6. RAS-JoyBOX GPIO Controller Kernel setting"

sudo sed -i '$a\mk_arcade_joystick_rpi' /etc/modules

sudo sed -i '$a\options mk_arcade_joystick_rpi map=1,2' /etc/modprobe.d/mk_arcade_joystick.conf
  
sudo reboot




