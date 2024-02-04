docker build -f Dockerfile.multi -t word-cloud-image .
docker run -p 8888:8888 --name word-cloud-service -it word-cloud-image 
