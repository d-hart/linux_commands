#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
# Shell types
    # Bourne Shell (sh)
    # C Shell(csh or tcsh)
    # Korn Shell (ksh)
    # Z Shell(zsh)
    # Bourne again shell(bash)

ls /bin #Used to list the binaries including the shells
echo $SHELL #Used to check the shell being used
chsh #Used to change the default shell
alias dt=date #Used to create an alias
history #Used to get a list of the commands
env #Used to list all the environment variables
export OFFICE=newyork #Used to set the OFFICE variable to a value
echo $PATH #An environment variable used to store external commands 
which tree #Used to see if a location of a command can be identified(the $PATH)
export PATH=$PATH:/opt/[program name]/bin #append the program to the $PATH
echo PS1 # Used to view the $PS1 Bash promt variable
export PS1="[\d \u@\h:\w]"
# Alter the ~/.profile or ~/.pam_environment file within the user's home directory
echo 'alias ll="ls -l"' >> ~/.profile #This command appends the export statement to the end of the ~/.profile file, making the variable MY_VARIABLE persistent across sessions
    #User Profile scripts ~/.profile, ~/.bash_profile, ~/.bashrc
echo 'export PROJECT=MERCURY' >> ~/.profile #
export PS1="[\d]\u@\h:\w\$"