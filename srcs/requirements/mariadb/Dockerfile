FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y mariadb-server
COPY ./conf/init_db.sql /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN service mysql start && mysql < init_db.sql


CMD ["mysqld"]
