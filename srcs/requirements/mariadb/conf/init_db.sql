CREATE DATABASE jbenjyDB;
CREATE USER 'jbenjy'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON jbenjyDB.* TO 'jbenjy'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
