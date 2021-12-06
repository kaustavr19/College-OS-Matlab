#List the names of the users logged in
who

#Find out your terminal’s device name
hostname

#Display current date in the form dd/mm/yy
date +%D

#Find out your machine’s name and the version of the operating system 
cat /etc/os-release

#Clear the screen and place the cursor at row 12, column 25
clear
tput cup 12 25

#Create a directory structure in your home directory (maindirectory, two subdirectories directory1 and directory2 
#under maindirectory) while being in your home directory
mkdir maindirectory
mkdir maindirectory/directory1
mkdir maindirectory/directory2

#Change to the directory directory2
cd /home/riju/maindirectory/directory2

#Create a file called biodata and store your name, age, gender in it
cat>biodata

#Make a copy of the biodata into another file text within the directory1
cp biodata /home/riju/maindirectory/directory1
cd /home/riju/maindirectory/directory1
mv biodata text

#Move the text from directory1 to directory2 
mv text /home/riju/maindirectory/directory2

#Combine the content of biodata and text in another new file datatext
cd /home/riju/maindirectory/directory2
cat biodata text>datatext

#Rename the file text to newtext
mv text newtext

#Display the calendar of current month, previous month and next month
cal -3
