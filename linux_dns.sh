#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
#DNS
cat >> /etc/hosts #View the entry that correlates the ip to a name
cat >> /etc/resolv.conf #View the dns resolution configuration file
    192.168.1.115   test #file configuration example
    search  mycompany.com prod.mycompany.com
cat /etc/nsswitch.conf #View the order in which the linux system checks both the dns server & /etc/hosts file
    hosts: files dns #file configuration example
nslookup www.google.com #Query a hostname from a DNS server not the local /etc/hosts file
dig www.google.com #Returns more details in a similar form as is stored on the server
