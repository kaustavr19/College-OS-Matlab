#Write a shell Script to check whether the given file is a blank file or not
if test $# -ne 1
then
        echo "Enter a filename a try again"
        exit
fi
if test -d $1
then
        echo "It is a directory, please enter a filename: "
        exit
fi
set -- `ls -l $1`
if test $5 -eq 0
then 
        echo "$1 is a blank file."
else
        echo"$1 is not a blank file."
fi



#Write a shell Script that shows the name of all the non-directory files in the current directory and calculates the sum of the size of them
sum=0
for var in *
do
        if test ! -d $var
        then
                ls $var
                set -- `ls -l $var`
                let sum=sum+$5
        fi
done
echo "Sum of sizes of all non directory files under current directory: $sum"


#Write a shell Script to list the name of files under the correct directory that starts with a vowel
echo "Required files are: "
ls -d [aeiou]*


#Write a shell Script which receives two filenames as arguments and checks whether the two files’ contents are same or not. If they are same then the second file should be deleted
if test $# -ne 2
then 
        echo "Please give two file names: "
        exit
fi
cmp -s $1 $2
if test $? -eq 0
then
        echo "$1 and $2 are same."
        rm $2
else
        echo "$1 and $2 are not same."
fi


#Write a shell script to check if a given file (filename supplied as command line argument) is a regular file or not and find the total number of words, characters and lines in it
file=$1
if [ -f $file ]
then
        echo "File $file exists"
else
        echo "File $file does not exist"
fi

w=`cat $file | wc -w`
c=`cat $file | wc -c`
l=`grep -c "." $file`

echo "number of words in $file is $w."
echo "Number of characters in $file is $c."
echo "Number of lines in $file is $l."
