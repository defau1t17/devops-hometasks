#!/bin/bash

docker build -f Dockerfile -t hometask-image .

docker run --hostname test -p 80:80 -idt hometask-image 

