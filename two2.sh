#! /bin/bash

# # 位置参数和特殊变量
# echo "\$0 -> $0"
# echo "\$1 -> $1"
# echo "\$2 -> $2"
# echo "\$3 -> $3"
# echo "\$4 -> $4"
# echo "\$# -> $#"
# echo "\$@ -> $@"
# for i in $@
# do
# 	echo $i
# done
# while [ $# -gt 0 ]
# do
# 	echo $1
# 	shift 1
# done

# func1(){ echo "abc";}
# func2(){ echo "def";} 
# function myfun()
# {
# 	echo $0          #一直都是该脚本的名称，而不是函数名
# 	echo $1          #在函数里面，表示函数参数；在外面表示命令行参数。（但是，两者相互不影响）
# 	echo $2
# 	echo $3
# 	echo $4
# 	func1|func2;};myfun
# #func1 & func2&};myfun
# #func1 || func2;};myfun
# #echo "abc" & echo "i am function"&};myfun

# set -x
# echo $$
# set +x
# myfun()
# {
# 	echo $$	
# 	return
# }
# myfun
# echo $?

# arr=(1 a 3.14 hello "abc world")
# arr[10]="line"
# arr[13]="ine"
# for((i = 0; i < ${#arr[@]}; i++))
# do
# 	echo ${arr[i]}
# done
# echo "-----------------------------------------------------------"
# for i in ${arr[@]}
# do
# 	echo $i
# done
