#Write a shell script to print half pyramid using *
for((i=0; i<=10; i++))
do
        for((j=0; j<=i; j++))
        do
                echo -n "* "
        done
        echo
done


#Write a shell script to display full pyramid using *
rows=8
for((i=1; i<=rows; i++))
do
        for((j=1; j<=rows-i; j++))
        do
                echo -n " "
        done
        for((j=1; j<=2*i-1; j++))
        do
                echo -n "* "
        done
        echo
done

#Write a shell script to display half pyramid using number
number=1
rows=5
for((i=1; i<=rows; i++))
do
        for((j=1; j<=i; j++))
        do
                echo -n "$number"
                number=$((number+1))
        done
        number=1
        echo
done


#Write a shell script to display full pyramid using number
number=1
rows=5
for((i=1; i<=rows; i++))
do
        for((j=1; j<=rows-i; j++))
        do
                echo -n " "
        done
        number=$i
        k=1
        for((j=1; j<=2*i-1; j++))
        do
                if [ $j -lt $i ]
                then
                        echo -n "$number"
                        number=$((number + 1))
                elif [ $j -eq $i ]
                then
                        echo -n "$number"
                        number=$((number - 1))
                else
                        echo -n "$number"
                        number=$((number - 1))
                fi
        done
        echo
done


#Write a shell script to display inverted half pyramid using number.
umber=1
rows=5

for((i=rows; i>1; i--))
do
        for((j=1; j<=i; j++))
        do
                echo -n "$number "
                number=$((number + 1))
        done
        number=1
        echo
done


