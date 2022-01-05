##Write a shell script to find the factorial value of any integer entered through the keyboard
echo -n "Enter a number:"
read number
factorial=1
for((i=1; i<=number; i++))
do
        factorial=$[ $factorial * $i ]
done
echo "The factorial of $number is $factorial"


##Write a shell script to generate all combinations of 1, 2 and 3.
for i in 1 2 3
do
        for j in 1 2 3
        do
                for k in 1 2 3 
                do
                        echo $i $j $k
                done
        done
done


##Write a shell script to print all prime numbers in a given range
echo enter m and n
read m n

for a in $(seq $m $n)
do
        k=0
        for i in $(seq 2 $(expr $a - 1))
        do
                if [ $(expr $a % $i) -eq 0 ]
                then
                        k=1
                        break
                fi
        done
        if [ $k -eq 0 ]
        then
        echo $a
        fi
done



##Write a shell script to calculate the sum of digits of any number entered through keyboard
Num=123
g = $Num

s=0

while [ $Num -gt 0 ]
do
        k=$(( $Num % 10 ))
        Num=$(( $Num / 10 ))
        
        s=$(( $s + $k ))
done

echo "sum of digits of $g is : $s"


##Rajesh’s basic salary (BASIC) is input through the keyboard. His dearness allowance (DA) is 52% of BASIC. House rent allowance (HRA) is 15% of BASIC. Contributory provident fund is 12% of (BASIC + DA). Write a shell script to calculate his gross salary and take home salary using the following formula: 
#Gross salary = BASIC + DA + HRA 
#Take home salary = Gross salary - (BASIC + DA) * 0.12
echo "Enter basic salary:"
read bs
hra=$(( $bs * 15 / 100 ))
da=$(( $bs * 52 / 100 ))
cpf=$((( $bs + $da ) * 12 / 100))
gross=$(( $bs + $hra + $da ))
ths=$(( $gross - ( $bs + $da ) * 12 / 100 ))

echo "Gross salary is $gross"
echo "Take home salary is $ths"


