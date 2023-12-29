sudo apt-get update -y

sudo apt install apache2 -y
sudo apt install php -y

sudo mkdir /var/www/php

sudo echo '<html>
  <head>
    <title>Site is running PHP version <?= phpversion(); ?></title>
  </head>
  <body>
    <?php
      $limit = rand(1, 1000);
      for ($i=0; $i<$limit; $i++){
        echo "<p>Hello, world!</p>";
      }
    ?>
  </body>
</html>' > /var/www/php/index.php

echo "<VirtualHost 192.168.10.194:80>
     DocumentRoot /var/www/php
     <Directory /var/www/php>
          Options FollowSymlinks
          AllowOverride All
     </Directory>
    </VirtualHost>" > /etc/apache2/sites-available/secondindex.conf

sudo a2ensite secondindex.conf
sudo a2dissite 000-default.conf

sudo systemctl restart apache2.service
