FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y nginx php-gd php-xml
COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 \
     -newkey rsa:2048 \
     -keyout /etc/ssl/jbenjy.key \
     -out /etc/ssl/jbenjy.crt \
     -subj "/C=RU/ST=Russia/L=Moscow/O=school21/OU=21Moscow/CN=jbenjy" ;

EXPOSE 443
CMD [ "nginx", "-g", "daemon off;"]
