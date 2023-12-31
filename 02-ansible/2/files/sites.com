server {
    listen 80;
    server_name 192.168.56.12;
    location /static {
    proxy_pass http://192.168.56.10:80;
        }
    location /dynamic {
    proxy_pass http://192.168.56.11:80;
        }
}