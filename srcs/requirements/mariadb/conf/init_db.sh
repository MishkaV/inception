#!/usr/bin/env bash
sed -i "s/bind-ad/\#bind-ad/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/\#port /port /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
chown -R mysql:mysql /var/lib/mysql

if [ ! -d var/lib/mysql/main_database ]; then
  sudo service mysql start
  sudo mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
  sudo mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
  sudo mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'"
  sudo mysql -u root -e "FLUSH PRIVILEGES"
  sudo mysqladmin -u root password $MYSQL_ROOT_PASSWORD
  sudo service mysql stop
else
  mkdir /var/run/mysqld
  touch /var/run/mysqld/mysqld.pid
  mkfifo /var/run/mysqld/mysqld.sock
fi

chmod +x /var/run/mysqld
chown -R mysql /var/run/mysqld

exec "$@"
