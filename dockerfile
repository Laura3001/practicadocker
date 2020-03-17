FROM nginx

RUN apt-get update
RUN apt-get install nginx -y

<VirtualHost *:80>
    DocumentRoot "/var/www/html"
    ServerName APP_HOST

    SetEnv APPLICATION_ENV "development"

    <Directory "/var/www/html">
        DirectoryIndex index.php
        AllowOverride All
        Order allow,deny
        Allow from all
    </Directory>
</VirtualHost>
