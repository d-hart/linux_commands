#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#

service sshd status
ssh 192.168.xxx.xxx
ip addr show
ip addr add 192.168.xxx.xxx dev eth0
service sshd status
service sshd start