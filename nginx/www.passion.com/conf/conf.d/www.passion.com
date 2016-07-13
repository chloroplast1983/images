server {
    listen       80;
    server_name  120.25.168.230;
    client_max_body_size 5m;

    location / {
    	root   /usr/share/nginx/html/;
        index  index.html index.php;
	try_files $uri $uri/ /index.php?$args;
    }

    location ~ \.php$ {
         root           /usr/share/nginx/html;
	 fastcgi_index  index.php;
         fastcgi_pass   phpfpm:9000;
         fastcgi_param  SCRIPT_FILENAME /var/www/html/$fastcgi_script_name;
         include        /etc/nginx/fastcgi_params;	
    }
}
