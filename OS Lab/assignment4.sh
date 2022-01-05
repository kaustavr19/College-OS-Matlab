#Search foe Vowels in a FILE
cat>f0
grep '[aeiou]' f0

#Search foe consonants in a file
grep '[^aeiou]' f0

#Create a file “state”
cat>states
cat states

#Display all the lines that start with “A” in “states”
grep '^A' states

#Display all the lines that ends with “i” in "STATES"
grep 'i$' states

#Print the output of 100/3 (after point there must be 2 numbers)
echo 'scale =2; 100/3' |bc

#Print the number which came after 10 using bc command(use increment operator)
echo 'x=10; ++x' |bc

#Find the binary equivalent of 10
echo "obase=2; 10" |bc

#Find the decimal equivalent of 1101001
echo "ibase=2; 1101001" |bc

#Create a file “name”. Identify the lines that are not dublicate
cat>name
uniq name -u

#Print the number of duplicate lines
uniq name -d

#Create two files and then print the difference between that two files
cat>line0
cat>line1
cat line0
cat line1
diff line0 line1

#Write two lines about your OS lab class in two different files
cat>lab1
cat>lab2

#are these two files identical?
cmp lab1 lab2

#Print the version of current kernel in your machine
uname -r
