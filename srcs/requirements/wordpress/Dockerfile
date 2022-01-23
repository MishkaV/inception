FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

#php
RUN apt-get install -y php7.3 php-mysql php-fpm php-pdo mariadb-client wget
WORKDIR /var/www/

#wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
WORKDIR /
COPY ./conf/wp-config.php /var/www/wordpress

RUN mkdir /run/php/
COPY ./conf/init_wp.sh /
RUN chmod 775 /init_wp.sh

ENTRYPOINT [ "/bin/bash", "init_wp.sh" ]
