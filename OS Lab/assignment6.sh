#Write a shell script to print the following pattern for any number of lines:
#        *
#     * * * *
#    * * * * *
#  * * * * * * *
#* * * * * * * * *
rows=5
for((i=1; i<=rows; i++))
do
        for((j=1; j<=rows-i; j++))
                do
                        echo -n "  "
                        done
                        for((j=1; j<=2*i; j++))
                                do
                                        echo -n "* "
                                        done
                                        echo
                                done


##Write a shell script to test whether a given string is palindrome or not
echo "Input the string without space"
read s

for i in $(seq 0 ${#s}) ; do
        rs=${s:$i:1}$rs
done

if [ "$s" = "$rs" ]; then
        echo "It is a palindrome."
else
        echo "It is not a palindrome."
fi


##Write a shell script which counts the number of consonants and vowels in a given sentence
echo -n "Enter a line of text: "
read string

VC=$(echo $string | grep -o -i "[aeiou]" | wc --lines)
CC=$(echo $string | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines)

echo "The given string has $VC vowels, $CC consonants in it."


##Write a shell script to display the list of users as well as the number of users connected to the system.
cat /etc/passwd>user.txt
set `wc -l user.txt`
log=`who|wc -l`
echo "There are $1 users in network"
echo "There are $log users logged in right now"
