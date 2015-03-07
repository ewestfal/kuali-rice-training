CREATE USER 'bookstore'@'localhost' IDENTIFIED BY 'bookstore';
CREATE DATABASE IF NOT EXISTS bookstore DEFAULT CHARACTER SET 'utf8' DEFAULT COLLATE 'utf8_bin';
GRANT ALL ON bookstore.* TO 'bookstore'@'localhost' WITH GRANT OPTION;    
