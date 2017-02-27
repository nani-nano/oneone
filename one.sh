
clear
echo "Check the package and install"
while read -r line; do
   chk=$(sudo dpkg-query -l | grep $line | wc -l)
   #echo $chk  
if [ $chk -ne 0 ]; then
        echo " [+] Package [ $line ] [ OK ]"
else
        echo " [+] Package [ $line ] [ NO ]"
        sudo apt-get install $line -y &>/dev/null
fi



done < pack
