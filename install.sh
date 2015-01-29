#!/bin/bash


###########for ssh & chromium-browser installation#####

dpkg -i  chrome-ssh/*.deb

################for grub and lightdm################

apt-get purge lightdm

dpkg -i lightdm-grub/*.deb

grub-install /dev/sda

cp grub /etc/default/grub

update-grub

###for browser autostart###################

cp default /etc/chromium-browser/

mkdir -p /home/`hostname`/.config/autostart/

cp google-chrome.desktop /home/`hostname`/.config/autostart/ 

######disable screen blank###################
cp xset.desktop /home/`hostname`/.config/autostart/

################for ssh reconnect###############

echo "ServerAliveInterval 60 " >> /etc/ssh/ssh_config 


cp clean-chromium  /usr/bin/



###############for the popup "System program problem detected" #########
cp apport /etc/default
############### press the powerbutton to poweroff#######################
cp gameconcourse_poweroff.sh /etc/acpi/
cp  powerbtn /etc/acpi/events/
##############for invisible the mouse pointer########################
 dpkg -i uncluter-xdotool-scrot/*.deb
 echo "unclutter -idle 0.01 -root &" >> /etc/init.d/rc.local
##########for refresh screen##########################
cp tools/*  /usr/bin/
cp xdpms /usr/bin/

#########for sudo reboot##################################
cp sudoers /etc/

echo "pactl set-card-profile 0 output:hdmi-stereo-extra1" >> /etc/init.d/rc.local
##########for 3G Card####################################

echo "usb_wwan" >> /etc/modules

echo "option" >> /etc/modules

echo "usbserial" >> /etc/modules

cp start3G /usr/bin/

cp restartNetwork  /usr/bin/

cp start3G.desktop /home/`hostname`/.config/autostart/

########for Option Repair##############################
cp OptionRepair/* /usr/bin/

cp reoption.desktop /home/`hostname`/.config/autostart/

#########for Screen off###############################
cp TurnoffScreen/* /usr/bin/

###########if you are ubuntu13.10 you need to install HDMI Sound#####

#dpkg -i HDMISound/*.deb
