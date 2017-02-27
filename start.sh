
# update apt-get
sudo apt-get update
#Check the package and install-----------------
echo "Check the package and install"
while read -r line; do
   echo "Check the package [+ $line +] and install"
   sudo apt-get install $line -y
   chk=$(sudo dpkg-query -l | grep $line | wc -l)
   echo $chk  
done < pack
