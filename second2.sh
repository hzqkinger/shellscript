#! /bin/bash

########################## 数组 #####################################################################
# # Bash Shell只支持一维数组，2.Shell数组用括号来表示，元素用空格分开，可以不用连续的下标且下标的范围没有限制
# arr=(1 aa 3.14 'b' "string")
# echo ${arr[0]}
# arr[30]="sxckajf"
# echo ${arr[@]}
# 
# for((i = 0;i<${#arr[*]};++i))
# do
# 	echo ${arr[i]}
# done
# echo ""
# for i in ${arr[@]}
# do
# 	echo $i
# done
# 

########################## shell脚本的调试方法 ###################################################
# -n
# -v
# -x


########################### 函数 ##################################################################
# 和c语言类似，shell中也有函数的概念。但是函数定义中没有返回值也没有参数列表
# # 1.
# func ()   #注意，一.左花括号和后面的命令之间必须要有空格或换行；二.如果最后一条命令与右花括号写在一行，则命令末尾必须要有分号
# {
# 		echo "it is functoin"
# }
# func
#
# # 2.函数传参,传参时，把函数当成迷你脚本
# function func
# {
# 		echo $0
# 		echo $1    #函数中的位置参数相当于函数的局部变量
# 		echo $2
# 		echo $3
# 		echo $#
# 		echo $@
# 		echo "it is function"
# }
# func agr1 arg2 arg3 a b c 
# 
# echo $1      #获取该second2.sh的位置参数，相当于全局变量
# echo $2
# echo $3
# echo $4
#
# # 3. 函数返回值
# myfun()
# {
# 		local myfloat=3.14
# 		myint=23
# 		echo $myint
# 		echo $myfloat
# 		echo ""
# 		echo "heheheh"
# 		echo "exec some code"
# 		return 0
# }
# # myfun
# # if [ $? -eq  0 ];then
# # 	echo "success"
# # else
# #     echo "failed"
# # fi
# #
# if myfun ;then
# 	echo "success"
# else
# 	echo "failed"
# fi
# 
# echo ''
# echo $myint
# echo $myfloat
# 
# function func
# {
# 		echo "123"
# 		echo "success"
# 		return 1
# 		echo "failed"
# 		return 0
# }
# ret=$(func)
# echo $?
# echo $ret
# echo $?
# 
function intAdd()
{
		let data=$1+$2
		echo $data
}
#intAdd 1 2


####################### 位置参数和特殊变量 ###############################################################################################
# $0 相当于c语言main函数的argv[0]
# $@ 表示参数列表$1 $2 $3....，可以用在for循环里面
# $# 相当于c语言main函数的argc-1，
# $? 上一条命令的Exit Status
# $$ 当前shell进程的进程号

# echo "\$# -> $#"
# echo "\$@ -> $@"
# echo "\$* -> $*"
# echo "\$? -> $?"
# i=4
# echo "after shift $i"   # shift[num]命令可以吧位置参数左移num位
# shift $i
# 
# echo "\$0 -> $0"
# echo "\$1 -> $1"
# echo "\$2 -> $2"
# echo "\$3 -> $3"
# echo "\$# -> $#"
# echo "\$@ -> $@"
# echo "\$* -> $*"
# echo "\$? -> $?"
# 
###echo ""                      #还没看懂
###echo "\$_ -> $_"
###echo "\$! -> $!"
###echo "\$- -> $-"
#####################如何遍历命令行参数#######################
# #1.
# for i in $@
# do
# 	echo $i
# done
# #2.
# while [ $# -ne 0 ]
# do
# 	echo $1
# 	shift
# done
# 






