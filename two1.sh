#! /bin/bash

# read myint            #整数测试 -eq -ne -gt -ge -lt -le
# test $myint -eq 100
# echo $?
# [ $myint -eq 100 ]
# echo $?
#
# read mystr         #字符串测试 == != -z -n
# [ x$mystr == "xhello" ]         #注意，这里有个字符串比较的小技巧
# echo $?
# [ $mystr -z ]
# echo $?
#
# [ -f one.sh ]   #文件测试
# echo $?
# [ -d one.sh ]
# echo $?

# [ ! "ss" == "ss" ]                                 #逻辑运算符
# echo $?
# [ "st" == "ss"  -a `echo hello` ] && echo `date`
# echo $?
#
# read mystr
# if [ x$mystr == "xhello" ];then                   #if条件分支语句
# 	echo today is `date +%Y-%m-%d`
# elif [ x$mystr == "xworld" ];then
# 	echo world
# # else
# # 	:
# fi
#
# case $1 in                                       #case多分支语句
# 	stop)
# 	echo "stop...done"
# 	;;
# 	start)
# 	echo "start...done"
# 	;;
# esac

# for ((i = 0;i < 10;i++))                 #类c循环
# do
# 	echo "hello $i"
# done
# 
# for i in {0..9}                         #for in循环
# do
# 	echo "world ${i}+++++++++++++++++"
# done
# 
# i=0
# while [ $i -lt 10 ]                      #while循环
# do
# 	echo "hello world $i"
# 	let i++
# done
# 
# i=0
# until [ $i -ge 10 ]                    #until循环
# do
# 	echo "hello $i'ssss'"
# 	((i++))
# done
# 
# echostr=''                      #求1到100的累加和
# sum=0
# for i in {1..100}
# do
# 	if [ -z $echostr ];then
# 		echostr=$i
# 	else
# 		echostr=$echostr+$i
# 	fi
# 	let sum+=$i
# done
# echo $echostr=$sum








str=""
if [ str ];then
	echo "++++++++++++++++++++++true"
else echo "+++++++++++++++++++++false"
fi

if [ -z str ];then
	echo "hah------------------------"
else echo "heh-----------------------"
fi

echo hell

exit 2


for i in {1..2}
do
	for j in {1..2}
	do
		for k in {1..2}
		do
			for l in {1..3}
			do
				if [ $l -eq 2 ]
				then
#continue 3
					break 2
				fi

				echo $i$j$k$l
			done
		done
	done
done









