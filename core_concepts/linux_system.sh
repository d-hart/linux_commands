#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
 
# Linux Boot Sequence
ls -l /sbin/init # Use this to check the init that is being used. There will be a pointer to /lib/systemd/systemd if systemd is being used
runlevel # Use this command to display the operation mode set in the system
systemctl get-default # Use this command to see the default target. This command looks up the file at /etc/systemd/system/default.target
ls -ltr /etc/systemd/system/default.target # On the example this command had a pointer to /lib/systemd/system/graphical.target
systemctl set-default multi-user.target # Use this command to change the default target. Creates symlink from /etc/systemd/system/default.target -> /lib/systemd/system/multi-user.target


