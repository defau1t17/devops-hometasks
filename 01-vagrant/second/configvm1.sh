sudo apt install apache2 -y

sudo mkdir /var/www/default

echo "hello from static page" > /var/www/default/index.html

 echo "<VirtualHost *:80>
     DocumentRoot /var/www/default
     <Directory /var/www/default>
          Options FollowSymlinks
          AllowOverride All
          Require all granted
     </Directory>
  </VirtualHost>" > /etc/apache2/sites-available/firstindex.conf
    

sudo a2ensite firstindex.conf
sudo a2dissite 000-default.conf

sudo systemctl restart apache2.service