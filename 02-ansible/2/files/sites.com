server {
    listen 80;
    server_name proxy.dynamic.com;
    location / {
        proxy_pass http://192.168.56.11:80;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}

server {
    listen 80;
    server_name proxy.static.com;   
     location / {
        proxy_pass http://192.168.56.10:80;
       proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }

}