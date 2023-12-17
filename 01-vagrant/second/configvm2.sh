sudo apt install apache2 -y
sudo apt install php -y

sudo mkdir /var/www/php

echo "<?php
     phpinfo();
 ?>" > /var/www/php/index.php

echo "<VirtualHost *:80>
     DocumentRoot /var/www/php
     <Directory /var/www/php>
          Options FollowSymlinks
          AllowOverride All
          Require all granted
     </Directory>
    </VirtualHost>" > /etc/apache2/sites-available/secondindex.conf

sudo a2ensite secondindex.conf
sudo a2dissite 000-default.conf

sudo systemctl restart apache2.service