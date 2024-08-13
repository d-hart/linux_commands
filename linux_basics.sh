#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
# Basics
echo Hi #Print to screen
ls #List files and folders
cd my_dir1 #Change directory 
pwd #Present Working Directory
mkdir new_directory #Make Directory
cd new_directory; mkdir www; pwd #Multiple commands
mkdir -p /tmp/asia/india/bandalore #Make Directory Hierarchy
rm -r /tmp/my_dir1 #Remove Directory
cp -r my_dir1 /tmp/my_dir1 #Copy a directory and all of it's contents from one location to another
uptime #Used to print information about how long the system has been running since the last reboot
pushd [Directory] #This is used to append a directory to the top of the directory stack https://www.geeksforgeeks.org/pushd-command-in-linux-with-examples/ 
pushd -n [Directory] # This command will push the directory to the second spot and the present directory remains unchanged at the first spot rotated.
popd [Directory] #This is used to return back to the initial directory
more [Filename] # View text file in a scrollable manner
    # [Space] - scroll the display, one screenful of data at a time
    # [Enter] - scrolls the display on line
    # [b] - scrolls the display backwards one screenfull of data at a time
    # [/] - search text

less [Filename] #View the contents of the file and navigate through the file
    # [Up Arrow] - scrolls up the display one line
    # [Down Arrow] - scroll down the display one line
    # [/] - search text
whatis [Command] #Displays a one line description of what a command does
apropos [Keyword] #Will search through the man pages for a keyword that was provided

#------------------------------------------------------------------------------------------------------------------------------#
# Files
touch new_file.txt #Create a new file(no contents)
cat > new_file.txt #Add contents to a file
cat new_file.txt #View the contents of a file
cp new_file.txt copied_file.txt #Copy file
mv new_file.txt sample_file.txt #Move(Or Rename) a file
rm new_file.txt #Remove a file 
#------------------------------------------------------------------------------------------------------------------------------#