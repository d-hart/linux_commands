#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
lspci # This command is used to display information about all PCI devices that are configured in the system(video cards, ethernet card, raid controllers, and wireless adapters)
lsblk # This command lists information about block devices
lscpu # This command displays information about the cpu architecture(cores, threads, model)
lsmem -summary # This command is used to list the available memory in the system
free -m # This command the total vs used amount of memory in the system
    # -k represents kb
    # -g represents gb
    # -m represents mb
lshw # This command is used to extrach detailed information on the entire hardware configuration of the machine(firmware config,memory config, cpu, bus speed, etc)
