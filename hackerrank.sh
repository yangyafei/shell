# 记录hackerrank shell 相关刷题记录

# Let's Echo
# echo 输出文本
echo 'HELLO'


# Looping and Skipping
# for循环输出奇数
for ((i=1; i<=99; i+=2))
do
	echo $i
done


# A Personalized Echo
# read读取控制台信息，echo 输出
read name 
echo "Welcome $name"


# Looping with Numbers
# for循环输出
for ((i=1;i<=50;i++))
do
	echo $i
done


# The World and Numbers
# read读取变量，加减乘除计算
# $(()) 可以将表达式或字符串，转换成数字
read x
read y
echo $(($x+$y))
echo $(($x-$y))
echo $(($x*$y))
echo $(($x/$y))


# Comparing Numbers
# read读取变量，比较大小
# -gt大于 -lt小于 -eq等于
# [ $x ] [ 内部表达式与边界有空格 ]
read x 
read y
[[ $x -gt $y ]] && echo 'X is greater than Y'
[[ $x -lt $y ]] && echo 'X is less than Y'
[[ $x -eq $y ]] && echo 'X is equal to Y'


# Getting started with conditionals
# 相等判断
read x
[[ "$x" == [yY] ]] && echo YES
[[ "$x" == [zZ] ]] && echo NO


# More on Conditionals
# read读取3个变量，判断等边，等腰，还是一般三角形
read x
read y
read z 
if [ $x -eq $y ] || [ $x -eq $z ] || [ $y -eq $z ]
then 
	if [ $x -eq $y ] && [ $x -eq $z ]
	then 
		echo 'EQUILATERAL'
	else
		echo 'ISOSCELES'
else
	echo 'SCALENE'



# Arithmetic Operations
# 计算表达式的值
# printf 格式化输出
# scale 设置小数的位数
# bc 进行高精度计算
read x
printf "%.3f" `echo "scale=4;$x" | bc`


# Computer the Average
# 计算平均值
# expr 支持四则运算
read n
sum=0
for((i=1;i<=n;i++))
do
	read m
	sum = `expr $sum + $m`
done 
printf "%.3f" $( echo "scale=10;$sum/$n" | bc -l )


# Cut #1
# cut -b 3 截取第几个字符
while read line 
do 
	echo $line | cut -b 3
done


# Cut #2
# cut -b 3,5 截取多个位置的字符，逗号隔开
while read line 
do 
	echo $line | cut -b 2,7
done


# Cut #3
# cut -b 3-5 | 截取某个范围的字符，用-
while read line 
do 
	echo $line | cut -b 2-7
done


# Cut #4
# cut -b 3-5 截取范围内的字符，用-
while read line 
do 
	echo $line | cut -b 1-4
done 


# Cut #5
# cut -f 1-5 分割取某个范围的信息
while read line
do 
	echo "$line" | cut -f 1-3
done


# Cut #6
# cut -c 13- | 截取字符，以字符为单位，-b是以字节为单位
while read line 
do 
	echo "$line" | cut -c 13-
done


# Cut #7
# cut -d ' ' -f 4 自定义截取取第几个部分
while read line 
do 
	echo "$line" | cut -d ' ' -f 4
done


# Cut #8
# cut -d ' ' -f 1-3 自定义截取取某个范围
while read line 
do
	echo "$line" | cut -d ' ' -f 1-3
done 


# Cut #9
# cut -f 2- 规定截取取某个范围
while read line 
do
	echo "$line" | cut -f 2-
done


# Head of a Text File #1
# read读取，echo输出
for((i=1;i<=20;i++))
do 
	read line
	echo $line
done 


# Head of a Text File #2
# head -c 20 截取前20个字符
head -c 20


# Middle of a Text File
# head -22 | tail -11 截取11到22行
head -22 | tail -11


# Tail of a Text File #1
# tail -20 取结尾20行
tail -20


# Tail of a Text File #2
# tail -c 20 截取最后20个字符
tail -c 20


# 'Tr' Command #1
# tr -t set1 set2 将set1转换成set2
tr -t [\(\)] [\[\]]


# 'Tr' Command #2
# tr -d set1 删除set1
tr -d [a-z]


# 'Tr' Commond #3
# tr -s set1 压缩重复字符
tr -s ' '


# Sort Command #1
# sort -u 输出一次排序结果
sort -u 


# Sort Command #2
# sort -r 反序输出
sort -r


# Sort Command #3
# sort -n 数字排序输出
sort -n 


# Sort Command #4
# sort -nr 数字排序逆序
sort -nr


# Sort Command #5
# sort -t 设置分隔符 -k指定列 -n数值排序 -r逆序
sort -t $'\t' -nrk 2


# Sort Command #6
# sort -t设置分隔符 -k指定列 -n数值排序
sort -t $'\t' -nk 


# Sort Command #7
sort -t '|' -nrk 2


# 'Uniq' Command #1
# uniq去除连续重复的
uniq


# 'Uniq' Command #2
# uniq -c 统计次数
uniq -c | cut -b 7-


# 'Uniq' Command #3
# uniq -i忽略大小写 -c统计次数
# uniq -ci | cut -b 7-


# 'Uniq' Command #4
# uniq -u 去除重复后全部显示出来
uniq -u






























