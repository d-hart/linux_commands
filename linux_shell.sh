#!/bin/zsh
#git remote show origin
#git remote set-url origin <url>
#git remote set-url --push origin <url>
#------------------------------------------------------------------------------------------------------------------------------#
#Basic Directory and Moving around
echo Hi #print to screen
ls #list files & folders
cd my_dir1 #change directories
pwd #print the working directory you are currently in
mkdir new_directory #make a new directory
cd new_directory; mkdir www; pwd #multiple commands
mkdir -p /tmp/asia/india/bangalore #create a directory tree
rm -r /tmp/my_dir1 #remove a directory and all of it's contents
cp -r my_dir1 /tmp/my_dir1 # copy the directory and all of it's contents from one location to another
#------------------------------------------------------------------------------------------------------------------------------#
#Files
touch new_file.txt #create a new file with no contents
cat > new_file.txt #add contents to the file,(Behavior: add lines of text once the prompt is availble)
cat new_file.txt #view the contents of the file
cp new_file.txt copy_file.txt #copy a file
mv new_file.txt sample.txt #move or rename a file to a new location(Behavior: If a file is moved to the same path with a different name then you're renaming the file)
rm new_file.txt