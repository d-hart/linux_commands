#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
uname # Used to display information about the kernal
uname -r # Used to display the kernal version
    # 4.15.0-72-generic
    # 4 = Kernal Version
    # 15 = Major Version
    # 0 = Minor Version
    # 72 = Patch Release
    # generic = Distro Specific Info
    # Check out https://kernal.org it's an open source project that hosts the repositorys that make all version of the kernal source code
dmesg # This is a tool used to display messages from an area of the kernal called the ring buffer
dmesg | grep -i usb # Used to see kernal messages that include the "usb"
udevadm info --query=path --name=/dev/sda5 # This command querys the udev database for device information
udevadm monitor # This listens to the kernal uevents