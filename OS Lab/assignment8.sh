#Write a shell program, which displays the message "welcome" and prints the date when you login to your system.
echo "Welcome ${USER}"
date
date +"%FORMAT"
var=$(date)
var= date
echo "$var"


#Accept a string from the terminal and echo a suitable message if it doesn't have at least ten characters
echo "Enter string"
read str

length=`echo $str | wc -c`
length=`echo $length - 1 |bc`
if [ $length -lt 10 ]
then
        echo "You enter less than 10 characters"
fi

#Write a shell script which receives either the LOGNAME or the UID supplied at the command prompt and finds out at how many terminals this user has logged in.
uid=$1

if [ $# -eq 0 ]
then
        echo "Enter logname"
        read uid
fi

ch=`who | grep $uid -c`
if [ $ch -eq 1 ]
then
        echo "Logname user loging"else
        echo "Logname user current not loging"
fi

echo "Total user are : `who | wc -l`"


#Write a shell script, which gets executed the moment a user logs in. It should display the message "GOOD MORNING" or "GOOD AFTERNOON" or "GOOD EVENING" depending upon the time at which the user logs in
hour=$(date +"%H")

if [ $hour -ge 0 -a $hour -lt 12 ]
then
        greet="Good Morning, $USER"

elif [ $hour -ge 12 -a $hour -lt 18 ]
then
        greet="Good Afternoon, $USER"
else
        greet="Good Evening, $USER"
fi

echo $greet


#
