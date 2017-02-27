
# update apt-get
sudo apt-get update
sudo apt-get install ruby -y
sudo apt-get install nmap -y
sudo apt-get install python -y
sudo apt-get install ssmtp -y
sudo dpkg-query -l | grep ssmtp | wc -l
while read -r line; do
   sudo apt-get install $line -y
   chk=$(sudo dpkg-query -l | grep $line | wc -l)
   echo $chk  
done < pack
