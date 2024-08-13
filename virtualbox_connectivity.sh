#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
#Virtual Box Connectivity
ip addr show #List all interfaces and IP addresses assigned to it
ip addr add 192.168.1.10/24 dev eth0 #Set the IP on a machine
service sshd status #Check to see if the daemon is running
service sshd start #Start the service