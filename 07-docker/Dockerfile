FROM debian

RUN apt-get update && apt install apache2 php -y && apt clean && mkdir /var/www/dynamic 

COPY files/index.php /var/www/dynamic 
COPY files/index.html /var/www/html

COPY files/dynamic.conf /etc/apache2/sites-available

RUN a2ensite dynamic.conf 

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]  