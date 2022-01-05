#Change the permissions of the file newtext to rw-rw-rw-
chmod a-x,g+w newtext
ls -l

#Recreate the file in such a way that only owner can read and write the file newtext
chmod u+x newtext
ls -l

#Recreate the file in such a way that no one can access the file newtext
chmod a-rwx newtext
ls -l

#Recreate the file in such a way that everyone can read, write ,execute the file newtext
chmod a+rwx newtext
ls -l

#Recreate the file in such a way that everyone of the group in which the file belongs can read write the file newtext
chmod g+rw newtext
ls -l

#Use command(s) to create a directory in your home directory called KeepOut whose contents can be read only by you
mkdir KeepOut
chmod o+r KeepOut
ls -l

#Create a directory D1 under  your home directory  .Under D1 create a directory D2.
#within D2 create and execute a C file ,which will display the factorial of  a  number. 
#Also create a hidden file . 
mkdir D1
mkdir D1/D2
cd D1/D2
gedit factorial.c
gcc -o factorial factorial.c
./factorial
mv factorial .factorial

#Display all files in the current directory along with permission
ls -l

#Create a file X1 in D2.create a softlink S1 and a hardlink H1 to the fileX1.delete X1 and access S1 and H1.delete S1 and H1
cat>X1
ln -s X1 x1s
ln X1 x1h
rm X1
rm x1s
rm x1h

#Create a copy of D2 in D1.and name it D3
cd ..
cp -r D2 D3

#Delete D2
rm -rf D2
