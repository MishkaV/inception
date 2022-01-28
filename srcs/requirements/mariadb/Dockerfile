FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y default-mysql-server sudo
EXPOSE 3306
COPY ./conf/init_db.sh /var/www/
RUN chmod +x /var/www/init_db.sh

ENTRYPOINT [ "/var/www/init_db.sh" ]

CMD ["mysqld"]
