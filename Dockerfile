FROM ubuntu
RUN apt-get update && apt-get install nginx -y && apt install php-fpm -y
RUN  service nginx restart
COPY ./default /etc/nginx/sites-available/default
COPY ./PHPINFO.php /var/www/html/info.php
RUN service nginx start && service php7.2-fpm start
EXPOSE 80