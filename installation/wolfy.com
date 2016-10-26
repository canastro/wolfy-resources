server {
        server_name wolfy.com;

        listen   80;

        access_log   /var/log/nginx/wolfy.com.access.log;
        error_log    /var/log/nginx/wolfy.com.error.log;

        root /home/ubuntu/wolfy-inspector/current;
        index index.html index.htm;

        location / {
                try_files $uri $uri/ /index.html?$args;
        }

}
