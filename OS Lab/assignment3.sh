#List all the files beginning with character “a” on the screen and also store them in a file called file1
cd D1/D3
#> a.txt
#> abcd.txt
#> aib.txt
find . -name "a*"
ls [a]* | tee file1
cat <file1

#Select lines 5 to 10 of a file
cat > fruits
head -10 fruits | tail -5

#Show the number of rows and columns of the terminal you are working
tput lines
tput cols

#Print “This text in bold” in terminal
echo -e "\e[1mThis text is in bold\e[0m"

#Print “This text is underlined” as shown
echo -e "\e[4mThis text is underlined\e[0m"

#What you type at the command line to find out how many total lines are contained in all the
#files ending in.txt in the current directory, printing only the total number of lines?
cat >state.txt
#West Bengal
#Bihar
#Jharkhand
#Odisha
#Maharastra
wc -l *.txt

#Find the user name and group id from the file/etc/passwd using the cut command
cut -d ":" -f 1,4 /etc/passwd

#Device a sequence which lists the five largest files in the current directory.
ls -IS | head -5

#Create two files “name” and “surname”. Merge both the files.
cat>name
cat>surname
paste name surname

#Sort the file “surname”
sort -f surname

#Print only the first letter of “surname”
cut -b 1 surname

#Write a line and replace the space with “:” sign
cat>input.txt
sed 's/ /:/g' input.txt
