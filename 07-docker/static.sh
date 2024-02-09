#!/bin/bash
docker run -p 8081:80 --name static -idt hometask-image sh -c 'a2dissite dynamic.conf;service apache2 reload;/usr/sbin/apache2ctl -DFOREGROUND'
