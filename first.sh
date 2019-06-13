#! /bin/bash
#   #!是一个约定标记，它告诉系统这个脚本需要什么解释器来执行


################################转义字符################################
###########################单引号和双引号##############################

########################命令代换与算术代换#####################################################
##1.命令代换可用  $()  ` `
#date=`date +%Y-%m-%d`
#echo $date
##2.算术代换可用  (())   # (())中只能用+-*/和()和++ --运算符，并且只能做整数运算
#myint=100
#echo $myint
#ret=$((++myint))
#echo $myint
#echo $ret

########################文件名代换###################################
#1.通配符 * 匹配0个或者多个任意字符
#2.       ？匹配一个任意字符
#3.[若干字符]匹配方括号中任意一个字符的一次出现

####################################关于字符串###################################
##1.字符串拼接，原则上，只要将信息写在一起就完成了拼接
#str1="hello"
#str2="world"
#echo $str1ss3
#echo $str1$str2
#echo $str1$str2'good'
#echo $str1$str2good
#echo $str1${str2}good
##2.获取字符串的长度
#str='hello'
#echo ${#str}
##3.提取字符串
#str='hello world'
#echo ${str:2:4}
##4.查找子字符串
#str="bit is a great company"
#echo `expr index "$str" is`

##################变量类型：一.本地变量：二.环境变量######################
#本地变量只存在于当前shell进程
#环境变量存在于所有进程中。环境变量可以从父进程传给子进程，printenv可以打印出所有的环境变量
#echo $myint
#unset myint
#myint=123
#echo $myint
#export myint

################只读变量###删除变量###
#readonly mystring="hello"
#echo $mystring              #注意，只读变量是不能更改不能删除的
#
#mystr="world"
#echo $mystr
#unset mystr
#echo $mystr

#########################使用变量###########
#myint=100
#myfloat=3.14
#mychar=c
#myval="bit tech"
#echo $myint+ss
#echo $myfloat'10'
#echo ${mychar}onst
#echo $myval
#
#your_hobby="code"
#echo $your_hobby
#your_hobby="sleep"
#echo $your_hobby
#your_hobby=25
#echo $your_hobby

#echo "hello world"



