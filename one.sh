#! /bin/bash

# echo hello world         #
# echo "hello world"
# 
# pwd     #注意.和source命令
# cd ..
# pwd

# myint=100
# myfloat=3.14
# mychar=c
# mystring=hello #world   #注意，字符串中不能含有空格；假设一定要有，必须用单或双引号引起来
# mystring2="hello world"
# readonly mystr='hello c'
# echo $myint
# echo $myfloat
# echo $mychar
# echo ${mystring}x
# unset mystring2   #unset命令可以删除变量;但是不能删除只读变量
# echo ${mystring2}x
# unset mystr   #解释器会对这句代码报错，然后继续执行下一行代码
# echo ${mystr}x

# ### 在父bash中：myval=100;echo $myval      结果显示100
# echo $myval                       #注意，只有环境变量才会从父bash传到子bash，所以myval是空串
# ### 在父bash中：export myval  #将myval导成环境变量
# echo $myval
# myval="hello world"            #在子bash中可以使用或改变从父bash 传过来的环境变量，但是不会影响父bash
# echo $myval

# mystr=abc1234def
# echo $mystr   #使用一个已赋值过的变量，只需在变量名前面加$即可
# echo $mystr'x'
# echo ${mystr}x
# echo ${#mystr} #获取字符串的长度
# str=${mystr:2:4} #提取子字符串
# echo $str
# mystr="bit is a great company"
# echo `expr index "$mystr" is`   #这个有一点疑问

#   #文件名代换 * ？ []
# pwd
# cd ..      #可以在上级目录下touch 文件
# pwd
# for i in {1..100}  #循环创建100个文件
# do
# touch file$i
# done
#
#   #命令代换   ` `   $()
# echo today is $(echo `date +%F`)   #反引号不支持嵌套使用；而$()支持
# echo "today is $(date +%F)"
#
#   #算术代换 (()) $(())   #注意，前面的是表达式，后面的是命令
# myint=2
# echo $myint
# echo "$((++myint))"
# echo $myint
#
#   #转义字符 \
echo "$(date)"
echo "\$(date)"
#   #单引号双引号  ' '  " "



