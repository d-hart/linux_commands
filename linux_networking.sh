#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
#Networking
ip link #List and modify interfaces on the host
ip addr add 192.168.1.10/24 dev eth0 #Assign ip addresses to a device interface
route #Displays the kernal routing table
ip route add 192.168.2.0/24 via 192.168.1.1 #Enables a device on one system to communicate with another device on a separate system
ip route add default via 192.168.2.1 #Set the(default or 0.0.0.0) last route of the route table for any request for any network outside of my network
#Packets are not forwarded from one interface to the next by default(eth0 -> eth1)
cat /proc/sys/net/ipv4/ip_forward #Check to see if ip forwarding is configured on a host. Displays the settings for the ip file that allows the forwarding of packets between interfaces
#When the file above is set to 0 that means ip forwarding is disabled.
echo 1 > /proc/sys/net/ipv4/ip_forward #Set the ip forwarding settings to 1, enabling ip forwarding
echo 1 > /etc/sysctl.conf #Set the ip forwarding settings to 1, enabling ip forwarding
ip addr #See the ip addresses assigned to those interfaces
ip addr add 192.168.1.10/24 dev eth0 #Set ip addresses on the interfaces
route #View the routing table
ip route #View the routing table
ip route add 192.168.1.0/24 via 192.168.2.1 #Used to add entries into the routing table

#Lab------------------------------------------------------------------------------------------------------------------------------#
#----app01----#
ssh app01
ip addr
# sudo ip addr replace 172.16.239.15/24 dev eth0
sudo ip addr add 172.16.238.15/24 dev eth0
exit
ip route add 172.16.239.0/24 via 172.16.238.10 #Allow the app01 to talk to app03 & app04
# ssh @172.16.238.15/24
# sudo ip addr del 172.16.238.11/24 dev eth0

#----app02----#
ssh app02
ip addr
sudo ip addr add 172.16.238.16/24 dev eth0
exit
ip route add 172.16.239.0/24 via 172.16.238.10 #Allow the app02 to talk to app03 & app04
# ssh 172.16.238.16/24
# sudo ip addr del 172.16.238.12/24 dev eth0

#----app03----#
ssh app03
ip addr
sudo ip addr add 172.16.239.15/24 dev eth0
exit
sudo ip route add 172.16.238.0/24 via 172.16.239.10 #Allow the app03 to talk to app01 & app02
# ssh 172.16.239.15/24
# sudo ip addr del 172.16.238.13/24 dev eth0

#----app04----#
ssh app04
ip addr
sudo ip addr add 172.16.239.16/24 dev eth0
exit
sudo ip route add 172.16.238.0/24 via 172.16.239.10 #Allow the app04 to talk to app01 & app02 
# ssh 172.16.239.16/24
# sudo ip addr del 172.16.238.14/24 dev eth0

#----jump host----#
sudo ip addr add 172.16.239.10/24 dev eth0

