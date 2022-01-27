FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

#php
RUN apt-get install -y php7.3 php-mbstring php-mysql php-fpm php-gd php-xml wget redis-server php-redis

COPY ./conf/init_wp.sh /var/www/
COPY ./conf/wp-config.php /var/www/
COPY ./conf/object-cache.php /var/www/

RUN chmod +x /var/www/init_wp.sh


EXPOSE 9000
ENTRYPOINT [ "/var/www/init_wp.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]
