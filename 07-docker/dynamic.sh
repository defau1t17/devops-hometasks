#!/bin/bash
docker build -f Dockerfile -t hometask-image .
docker run -p 8080:80 --name dynamic -idt hometask-image 

