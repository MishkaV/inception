#!/usr/bin/env bash
sed -i "s/bind-ad/\#bind-ad/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/\#port /port /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
chown -R mysql:mysql /var/lib/mysql
if [ ! -d var/lib/mysql/main_database ]; then
  service mysql start
  mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB"
  mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'"
  mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%'"
  mysql -u root -e "FLUSH PRIVILEGES"
  mysqladmin -u root password $MYSQL_ROOT_PASSWORD
  service mysql stop
else
  mkdir /var/run/mysqld/
  touch /var/run/mysqld/mysqld.pid
  mkfifo /var/run/mysqld/mysqld.sock
fi
chmod +x /var/run/mysqld
chown -R mysql /var/run/mysqld

#sudo mysql -u root

#touch /var/run/mysqld/mysqld.sock
#sudo chmod 755 /var/run/mysqld/mysqld.sock

#sudo service mysql restart

#sudo rm -rf /var/run/mysqld
#sudo mkdir /var/run/mysqld/
#sudo mkfifo /var/run/mysqld/mysqld.sock
#sudo chown -R mysql /var/run/mysqld

exec "$@"
