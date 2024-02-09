#!/bin/bash
docker run -p 8081:80 --name static -v $(pwd)/volumes/content:/var/www/html -v $(pwd)/volumes/sites-enabled:/etc/apache2/sites-enabled -dit hometask-image 
