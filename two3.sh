#! /bin/bash

#echo "hello world"> file
# for i in {1..10}
# do
# 	echo "hello world $i"
# done>>file
# 
# while read str
# do
# 	echo bit$str
# done<file>file_bak

mystr=string
myint=2
myfloat=3.14
printf "%s %d %f\n" $mystr $myint $myfloat
#printf "%s %d %f" $mystr$myint$myfloat
