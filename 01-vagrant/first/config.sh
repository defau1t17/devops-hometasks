sudo apt install apache2 -y
 
sudo apt install php -y

sudo mkdir /var/www/default
sudo mkdir /var/www/php

echo "hello from static page" > /var/www/default/index.html

echo "<?php
     phpinfo();
 ?>" > /var/www/php/index.php
  
 echo "<VirtualHost *:8080>
     DocumentRoot /var/www/default
     ServerName localhost
     <Directory /var/www/default>
          Options FollowSymlinks
          AllowOverride All
          Require all granted
     </Directory>
  </VirtualHost>" > /etc/apache2/sites-available/firstindex.conf
    
echo "<VirtualHost *:8081>
     DocumentRoot /var/www/php
     ServerName localhost
     <Directory /var/www/php>
          Options FollowSymlinks
          AllowOverride All
          Require all granted
     </Directory>
    </VirtualHost>" > /etc/apache2/sites-available/secondindex.conf

sudo a2ensite firstindex.conf
sudo a2ensite secondindex.conf


sudo echo "
Listen 80
Listen 8080
Listen 8081
" >> /etc/apache2/ports.conf

sudo systemctl restart apache2.service