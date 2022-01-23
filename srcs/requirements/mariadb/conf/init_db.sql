CREATE DATABASE JbenjyDB;
CREATE USER 'jbenjy'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON JbenjyDB.* TO 'jbenjy'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
