FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y nginx php-gd php-xml
RUN mkdir -p /run/nginx
COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN mkdir -p /var/www/webfront/
COPY ./conf/index.html /var/www/webfront/
COPY ./conf/styles.css /var/www/webfront/
COPY ./conf/ava.png /var/www/webfront/
RUN chmod 777 /var/www/webfront/*

RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 \
     -newkey rsa:2048 \
     -keyout /etc/ssl/jbenjy.key \
     -out /etc/ssl/jbenjy.crt \
     -subj "/C=RU/ST=Russia/L=Moscow/O=school21/OU=21Moscow/CN=jbenjy" ;

EXPOSE 10000
CMD [ "nginx", "-g", "daemon off;"]
