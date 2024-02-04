#!/bin/bash
docker create --name static -p 8081:80 hometask-image 
docker cp files/index.html static:/var/www/html
docker start static
docker exec static a2dissite dynamic.conf
docker exec static service apache2 reload