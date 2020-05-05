mysql -u root -p 
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql
docker cp initdb.sql mymysql1:/guac_db.sql
docker exec -it mymysql1 bash
ALTER USER 'root'@'localhost' IDENTIFIED BY '123456'
CREATE DATABASE guacamole_db;
CREATE USER 'guacamole_user'@'%' IDENTIFIED BY 'guacamole_user_password';
GRANT SELECT,INSERT,UPDATE,DELETE ON guacamole_db.* TO 'guacamole_user'@'%';
FLUSH PRIVILEGES;
cat guac_db.sql | mysql -u root -p guacamole_db
