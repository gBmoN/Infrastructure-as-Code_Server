#!bin/bash

echo "Updating services and downloading components...."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Concluded! Starting apache service...."
echo "Moving directories and downloading HTML files...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Web server running!!!"
echo "Website available!!!"
echo "All done!!!"
