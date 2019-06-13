#! /bin/bash
###################################################################
# i=0
# bar=''
# lable=("|" "/" "-" "\\")
# while [ $i -le 100 ]
# do
# 	printf "[%-100s][%d%%][%c]\r" $bar $i ${lable[i%4]}
# 	sleep 0.1
# 	let i++
# 	bar=#$bar
# done
# echo ''
##1.为什么不用刷新缓冲区
##2.最后为什么用echo ""
# 
#################################################################
[ $# -lt 3 ] && exit 1
max=$1
min=$1
total=0
for i in $@
do
	[ $max -gt $i ]&& max=$i
	[ $min -lt $i ]&& min=$i
	let total+=i
done
echo "max number is:$max"
echo "min number is:$min"
echo average is:$(echo "ibase=10;scale=2;$total/$#" | bc)
# echo $("ibase=10;scale=2;$total/$#" | bc) #出错

##################################################################
# [ $1 -lt 1 ] && exit 1
# first=1
# second=1
# i=1
# while [ $i -lt $1 ]
# do
# 	let first=first+second+second
# 	let second=first-second
# 	let first=first-second
# 	let i++
# done
# echo $first      # 1 1 2 3 5 8 13 21 34 ...
# echo $second     # 1 2 3 5 8 13 21 34 ...
# 	
##################################################################
# file=file
# [ ! -f $file ] && exit 1
# while read line
# do
# 	p1=$(echo $line | cut -c 1-3)
# 	p2=$(echo $line | cut -c 4-6 | tr '[a-z]' '[A-Z]')
# 	p3=$(echo $line | cut -c 7-9)
# 	
# 	echo $p3$p2$p1
# done<$file >file.bak
# 


############################## echo printf ##############################################################################
# echo string s1 s3
# echo "string s1 s3"
# echo 'sring s1 s3'
# 
# echo -e "hello \nworld"
# echo "hello \nworld"
#
# mystr="string"
# myint=100
# myfloat=3.14
# printf "mystr:%s\nmyint:%d\nmyfloat:%f\n" $mystr $myint $myfloat
# printf "[%20s]]\n" $mystr
# 
# echo $RANDOM  #产生一个随机数


############################### shell文件包含 ##########################################################################
# shell也可以做成c/c++那样的文件包含的样式，一般有两种方式： .  source
# . second2.sh
# intAdd 1 2
# echo "please enter two numbers exactly:"
# read d1 d2
# echo $(intAdd $d1 $d2)
# 

################################### shell输出重定向 ################################################################
# for i in {1..10}   #本来for循环要把内容输出到标准输出，现在输出到了file文件
# do
# 	echo "hello->$i"
# done >>file
# 
# while read line   #本来要从标准出入读取数据，现在从file文件中读
# do
# 	echo xxx bit xxx$line
# done <file
# # 默认情况下，command >file将stdout重定向到file; command <file将stdin重定向到file
#
#
# cat  <<EEss > file
# #	该命令的作用是将两个EEss之间的内容
# #	作为输入传递给前面的命令(例如在这里是echo命令)
#    "sssssssstt"
# EEss
#
# echo "hello world"
# echo "hello world" > /dev/null  #/dev/null是一个特殊的文件，写到它的内容都会被丢弃
# 
