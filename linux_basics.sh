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
#------------------------------------------------------------------------------------------------------------------------------#
# Files
touch new_file.txt #Create a new file(no contents)
cat > new_file.txt #Add contents to a file
cat new_file.txt #View the contents of a file
cp new_file.txt copied_file.txt #Copy file
mv new_file.txt sample_file.txt #Move(Or Rename) a file
rm new_file.txt #Remove a file 
#------------------------------------------------------------------------------------------------------------------------------#