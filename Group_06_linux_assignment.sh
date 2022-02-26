#!/bin/bash  
echo " "
echo " "  
echo "Linux Assignment....!!!"

while :
do
echo "------------------------------------------" 
echo "------------------------------------------"
echo "Enter 1 to continue"
echo "------------------------------------------" 
echo "------------------------------------------"
echo " "
read -p "Enter 0 to exit:" n
	[ $n -eq 0 ] && { echo "Byee.."; break; }
echo " " 
echo "------------------------------------------" 
echo "------------------------------------------"
echo " "
echo "Enter Student Name"
read name 
echo "------------------------------------------" 
echo "------------------------------------------"
echo " "
echo "Enter how much Quota you want to assign for soft"
read soft 

echo "Enter how much Quota you want to assign for hard"
read hard 


sudo setquota -u $name $soft $hard 0 0 /

sudo quota -vs $name
done
sudo repquota -s /
