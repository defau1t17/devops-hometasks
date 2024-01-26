FROM debian

RUN apt-get update && apt install apache2 -y apache2-utils && apt clean
RUN mkdir /var/www/static && mkdir /var/www/dynamic

COPY files/index.html /var/www/static 
COPY files/index.php /var/www/dynamic 
COPY files/static.conf /etc/apache2/sites-available
COPY files/dynamic.conf /etc/apache2/sites-available


# EXPOSE 80
# CMD ["service", "apache2", "start"]
# RUN  a2dissite 000-default.conf && a2ensite dynamic.conf && a2ensite static.conf && service apache2 start


# CMD ["/etc/init.d/apache2" ,"start", "-D",  "FOREGROUND"]