FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 \
     -newkey rsa:2048 \
     -keyout /etc/ssl/jbenjy.key \
     -out /etc/ssl/jbenjy.crt \
     -subj "/c=RU/ST=Russia/L=Moscow/O=school21/OU=21Moscow/CN=jbenjy" ;

CMD [ "nginx", "-g", "daemon off;"]
