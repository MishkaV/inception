FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y  php-common php-iconv php-json php-gd php-curl php-xml \
	php-mysqli php-imap php-cgi php-pdo php-soap php-xmlrpc \
	php-posix php-gettext php-ldap php-ctype php-dom php7.3 php-fpm php-opcache wget

RUN wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php"
RUN mv adminer-4.8.1.php index.php

EXPOSE 11000
CMD ["php", "-S", "0.0.0.0:11000"]