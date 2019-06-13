#! /bin/bash


###############################循环语句######################################################
#1.类c循环 #2.for in循环  #3.while循环   #4.until循环  #5.死循环  #6.命令行循环  ########################################################################
#for ((i=0;i<=10;i++))   #注意，在(())中所有的语法都跟c语言一样
#do
#	echo "hello $i"
#done
#
#for i in {1..10}        #2.for in循环
#do
#	echo "hello $i"
#done
#
#for i in {1,2,3}{a..c}
#do
#	echo "hello $i"
#done
#
#for i in {1,2,3} {a..c}
#do
#	echo "hello $i"
#done
#
#for i in { 1 2 3 }{a..c}   #一.大括号中没有逗号会怎么样 二.两个大括号粘在一起会怎么样
#do
#	echo "hello $i"
#done
#
#for i in { 1 2 3 } {a..c}
#do
#	echo "hello $i"
#done
#
#i=0                       #3.while循环
#while [ $i -le 5 ]
#do
#	echo "hello $i"
#	let i++
##	((i++))
#done
#
#i=0                   #4.until循环
#until [ $i -ge 10 ]    #直到i>=10时，才会结束循环
#do
#	echo "hello $i"
#	let i++
#done
#

i=1
sum=0
str=""
while [ $i -le 100 ]
do
	[ -n $str ] && str=$str+$i
	[ -z $str ] && str=$i
	let sum+=i
	let i++
done

echo $str=$sum

###############################条件测试####################################################
#1. shell脚本中测试是用命令来完成的，常见的测试命令包含test和[ ##########################################################################################
#   切记，shell认为：退出码为0，测试条件成立；退出码为非0，测试条件不成立
#read myint                                                                     #整数测试
#test $myint -eq 100
#echo $?
# c语言  ==  !=  >   >=  <   <=
# shell -eq -ne -gt -ge -lt -le       #整数测试
#        ==  !=    -z  -n    等       #字符串测试
#     -d   -f  -b    -c    等         #文件测试

#str=''                    #注意下面四个语句好像有点不对                              #字符串测试
#[ -z $str ] #是否为空串
#echo $?
#[ -n $str ] #是否为非空串
#echo $?
#read str
#[ X$str == "Xhello" ]
#echo $?
#[ -z $str ] #是否为空串
#echo $?
#[ -n $str ] #是否为非空串
#echo $?

# /dev/tty  字符设备   # /dev/sda 块设备   # ./second.sh  普通文件  # Dir  目录  
#filename="Dir"                                                                  #文件测试
#[ -c $filename ]
#echo $?
#[ -b $filename ]
#echo $?
#[ -f $filename ]
#echo $?
#[ -d $filename ]
#echo $?


#2.多条见测试#########################################################################################################################################
# c语言   &&   ||   !
# shell   -a   -o   !

#read mystr
#[ ! "X$mystr" == "Xhello" ]
#echo $?
#
#read data1;read data2
#[ $data1 -eq 10 -a $data2 -eq 20 ]
#echo $?
#[ $data1 -eq 10 -o $data2 -eq 20 ]
#echo $?

#3. if/then/elif/else/fi  ###########################################################################################################################

#read mystr
#if [ X$mystr == "Xhello" ] ;then
#	echo "get hello"
#else
#	echo "not"
#fi
#
#read data
#if [ $data -lt 100 ];then
#	if [ $data -eq 50 ];then
#		echo "data is eq 50"
#	elif [ $data -lt 50 ];then
#		echo "data is lt 50"
#	else
#		echo "data is gt 50 and lt 100"
#	fi
#else
#	echo "data is gt 100"
#fi
#
#read filename
#if grep -Eq '222' $filename;then
#	echo "yes"
#else
#	echo "no"
#fi
#
#read data
#if [ $data -eq 10 ];then
#	:
#else
#	echo "AAAAAAAAAAAA"
#fi
#
#read data
#[ $data -ne 10 ] && echo "data is ne 10"
#[ $data -ne 10 ] && {
#		echo "data is ne 10"
#}
#[ $data -ne 10 ]|| echo "data is eq 10"
#
#case $1 in
#	[sS]tart | -s )
#		echo "start...done"
#	;;
#	[Ss]top|-t)              #注意，右方括号前一个字符不能是空格；否则就跟测试条件的右方括号有冲突
#		echo "stop...done"
#	;;
#esac
#



