FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y default-mysql-server

COPY ./conf/init_db.sh /var/www/
RUN chmod +x /var/www/init_db.sh

#COPY ./conf/init_db.sql /
#COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
#RUN service mysql start && mysql < init_db.sql


ENTRYPOINT [ "/var/www/init_db.sh" ]
EXPOSE 3306
CMD ["mysqld"]
