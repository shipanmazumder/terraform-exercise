#!/bin/bash
sudo apt update
sudo apt install apache2 unzip wget -y
systemctl start apache2  
systemctl enable apache2  
wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip
unzip -o 2131_wedding_lite
cp -r 2131_wedding_lite/* /var/www/html/
systemctl restart apache2  